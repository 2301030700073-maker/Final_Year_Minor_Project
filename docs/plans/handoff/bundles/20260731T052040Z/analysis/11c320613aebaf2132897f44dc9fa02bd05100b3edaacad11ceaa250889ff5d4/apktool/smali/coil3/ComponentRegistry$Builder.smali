.class public Lcoil3/ComponentRegistry$Builder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"

# interfaces
.implements Landroidx/compose/ui/text/ParagraphIntrinsics;
.implements Lkotlinx/serialization/modules/SerializersModuleCollector;
.implements Landroidx/viewbinding/ViewBinding;


# instance fields
.field public final synthetic $r8$classId:I

.field public final interceptors:Ljava/lang/Object;

.field public keyers:Ljava/lang/Object;

.field public lazyDecoderFactories:Ljava/lang/Object;

.field public lazyFetcherFactories:Ljava/lang/Object;

.field public mappers:Ljava/lang/Object;


# direct methods
.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcoil3/ComponentRegistry$Builder;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    .line 827
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 828
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 829
    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 830
    new-instance p1, Landroidx/compose/runtime/internal/AtomicInt;

    const/4 v0, 0x0

    .line 831
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 832
    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 833
    new-instance p1, Landroidx/collection/MutableObjectList;

    invoke-direct {p1}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 834
    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 835
    new-instance p1, Landroidx/collection/MutableObjectList;

    invoke-direct {p1}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 836
    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    return-void

    .line 837
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 838
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 839
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 840
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 841
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 842
    new-instance p1, Ljava/util/HashMap;

    invoke-direct {p1}, Ljava/util/HashMap;-><init>()V

    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 0

    iput p2, p0, Lcoil3/ComponentRegistry$Builder;->$r8$classId:I

    packed-switch p2, :pswitch_data_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    return-void

    .line 796
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 797
    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 798
    invoke-static {p1}, Landroidx/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object p2

    iput-object p2, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    const p2, 0x7f130436

    .line 799
    invoke-virtual {p1, p2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x12
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Lokhttp3/Dispatcher;)V
    .locals 6

    const/4 v0, 0x7

    iput v0, p0, Lcoil3/ComponentRegistry$Builder;->$r8$classId:I

    .line 843
    new-instance v0, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    .line 844
    invoke-direct {v0, v1, p2, v2}, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;-><init>(Landroid/content/Context;Lokhttp3/Dispatcher;I)V

    .line 845
    new-instance v1, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    .line 846
    invoke-direct {v1, v2, p2, v3}, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;-><init>(Landroid/content/Context;Lokhttp3/Dispatcher;I)V

    .line 847
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_1

    .line 848
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->TAG:Ljava/lang/String;

    const/16 v4, 0x18

    if-lt v2, v4, :cond_0

    .line 849
    new-instance v2, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre28;

    invoke-direct {v2, v3, p2}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre28;-><init>(Landroid/content/Context;Lokhttp3/Dispatcher;)V

    goto :goto_0

    .line 850
    :cond_0
    new-instance v2, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre24;

    invoke-direct {v2, v3, p2}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre24;-><init>(Landroid/content/Context;Lokhttp3/Dispatcher;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 851
    :goto_0
    new-instance v3, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x2

    .line 852
    invoke-direct {v3, v4, p2, v5}, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;-><init>(Landroid/content/Context;Lokhttp3/Dispatcher;I)V

    .line 853
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 854
    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 855
    iput-object v0, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 856
    iput-object v1, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 857
    iput-object v2, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 858
    iput-object v3, p0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/ContextWrapper;Landroid/view/View;)V
    .locals 9

    const/4 v0, 0x1

    iput v0, p0, Lcoil3/ComponentRegistry$Builder;->$r8$classId:I

    .line 886
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 887
    iput-object p2, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 888
    new-instance v3, Landroidx/appcompat/view/menu/MenuBuilder;

    invoke-direct {v3, p1}, Landroidx/appcompat/view/menu/MenuBuilder;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 889
    new-instance v0, Landroidx/appcompat/widget/PopupMenu$1;

    const/4 v8, 0x0

    invoke-direct {v0, p0, v8}, Landroidx/appcompat/widget/PopupMenu$1;-><init>(Ljava/lang/Object;I)V

    .line 890
    iput-object v0, v3, Landroidx/appcompat/view/menu/MenuBuilder;->mCallback:Landroidx/appcompat/view/menu/MenuBuilder$Callback;

    .line 891
    new-instance v1, Landroidx/appcompat/view/menu/MenuPopupHelper;

    const/4 v5, 0x0

    const/4 v7, 0x0

    const v6, 0x7f0403d2

    move-object v2, p1

    move-object v4, p2

    invoke-direct/range {v1 .. v7}, Landroidx/appcompat/view/menu/MenuPopupHelper;-><init>(Landroid/content/Context;Landroidx/appcompat/view/menu/MenuBuilder;Landroid/view/View;ZII)V

    iput-object v1, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 892
    iput v8, v1, Landroidx/appcompat/view/menu/MenuPopupHelper;->mDropDownGravity:I

    .line 893
    new-instance p1, Landroidx/appcompat/widget/PopupMenu$2;

    invoke-direct {p1, p0, v8}, Landroidx/appcompat/widget/PopupMenu$2;-><init>(Ljava/lang/Object;I)V

    .line 894
    iput-object p1, v1, Landroidx/appcompat/view/menu/MenuPopupHelper;->mOnDismissListener:Landroid/widget/PopupWindow$OnDismissListener;

    return-void
.end method

.method public constructor <init>(Landroid/text/Layout;)V
    .locals 5

    const/4 v0, 0x4

    iput v0, p0, Lcoil3/ComponentRegistry$Builder;->$r8$classId:I

    .line 859
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 860
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    move v2, v1

    .line 861
    :cond_0
    iget-object v3, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    check-cast v3, Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    const/16 v4, 0xa

    invoke-static {v4, v2, v0, v3}, Lkotlin/text/StringsKt;->indexOf$default(CIILjava/lang/CharSequence;)I

    move-result v2

    if-gez v2, :cond_1

    .line 862
    iget-object v2, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    check-cast v2, Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    goto :goto_0

    :cond_1
    add-int/lit8 v2, v2, 0x1

    .line 863
    :goto_0
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 864
    iget-object v3, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    check-cast v3, Landroid/text/Layout;

    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v3

    if-lt v2, v3, :cond_0

    .line 865
    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 866
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v1, p1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_2
    iput-object v0, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 867
    iget-object p1, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 868
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    return-void
.end method

.method public synthetic constructor <init>(Landroid/widget/RelativeLayout;Landroid/widget/ImageView;Landroid/widget/TextView;Landroid/view/ViewGroup;Landroid/view/View;I)V
    .locals 0

    .line 885
    iput p6, p0, Lcoil3/ComponentRegistry$Builder;->$r8$classId:I

    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    iput-object p2, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    iput-object p3, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    iput-object p4, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    iput-object p5, p0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V
    .locals 39

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move-object/from16 v2, p2

    .line 6
    .line 7
    const/4 v3, 0x3

    .line 8
    iput v3, v0, Lcoil3/ComponentRegistry$Builder;->$r8$classId:I

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, v0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 14
    .line 15
    move-object/from16 v3, p3

    .line 16
    .line 17
    iput-object v3, v0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 18
    .line 19
    new-instance v3, Landroidx/compose/ui/text/MultiParagraphIntrinsics$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-direct {v3, v0, v4}, Landroidx/compose/ui/text/MultiParagraphIntrinsics$$ExternalSyntheticLambda0;-><init>(Lcoil3/ComponentRegistry$Builder;I)V

    .line 23
    .line 24
    .line 25
    sget-object v5, Lkotlin/LazyThreadSafetyMode;->NONE:Lkotlin/LazyThreadSafetyMode;

    .line 26
    .line 27
    invoke-static {v5, v3}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    iput-object v3, v0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 32
    .line 33
    new-instance v3, Landroidx/compose/ui/text/MultiParagraphIntrinsics$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    invoke-direct {v3, v0, v6}, Landroidx/compose/ui/text/MultiParagraphIntrinsics$$ExternalSyntheticLambda0;-><init>(Lcoil3/ComponentRegistry$Builder;I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v5, v3}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iput-object v3, v0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 44
    .line 45
    iget-object v3, v2, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    .line 46
    .line 47
    sget v5, Landroidx/compose/ui/text/AnnotatedStringKt;->$r8$clinit:I

    .line 48
    .line 49
    iget-object v5, v1, Landroidx/compose/ui/text/AnnotatedString;->paragraphStylesOrNull:Ljava/util/ArrayList;

    .line 50
    .line 51
    iget-object v7, v1, Landroidx/compose/ui/text/AnnotatedString;->text:Ljava/lang/String;

    .line 52
    .line 53
    sget-object v8, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 54
    .line 55
    if-eqz v5, :cond_0

    .line 56
    .line 57
    new-instance v9, Landroidx/compose/ui/text/AnnotatedString$special$$inlined$sortedBy$1;

    .line 58
    .line 59
    invoke-direct {v9, v6}, Landroidx/compose/ui/text/AnnotatedString$special$$inlined$sortedBy$1;-><init>(I)V

    .line 60
    .line 61
    .line 62
    invoke-static {v5, v9}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 63
    .line 64
    .line 65
    move-result-object v5

    .line 66
    goto :goto_0

    .line 67
    :cond_0
    move-object v5, v8

    .line 68
    :goto_0
    new-instance v6, Ljava/util/ArrayList;

    .line 69
    .line 70
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 71
    .line 72
    .line 73
    new-instance v9, Lkotlin/collections/ArrayDeque;

    .line 74
    .line 75
    invoke-direct {v9}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 76
    .line 77
    .line 78
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 79
    .line 80
    .line 81
    move-result v10

    .line 82
    move v11, v4

    .line 83
    move v12, v11

    .line 84
    :goto_1
    if-ge v11, v10, :cond_a

    .line 85
    .line 86
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v14

    .line 90
    check-cast v14, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 91
    .line 92
    iget-object v15, v14, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v15, Landroidx/compose/ui/text/ParagraphStyle;

    .line 95
    .line 96
    invoke-virtual {v3, v15}, Landroidx/compose/ui/text/ParagraphStyle;->merge(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    .line 97
    .line 98
    .line 99
    move-result-object v15

    .line 100
    const/16 p3, 0x0

    .line 101
    .line 102
    iget v13, v14, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 103
    .line 104
    iget v14, v14, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 105
    .line 106
    if-gt v13, v14, :cond_1

    .line 107
    .line 108
    goto :goto_2

    .line 109
    :cond_1
    const-string v16, "Reversed range is not supported"

    .line 110
    .line 111
    invoke-static/range {v16 .. v16}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 112
    .line 113
    .line 114
    :goto_2
    if-ge v12, v13, :cond_4

    .line 115
    .line 116
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 117
    .line 118
    .line 119
    move-result v16

    .line 120
    if-nez v16, :cond_4

    .line 121
    .line 122
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 123
    .line 124
    .line 125
    move-result-object v16

    .line 126
    move-object/from16 v4, v16

    .line 127
    .line 128
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 129
    .line 130
    move-object/from16 v16, v5

    .line 131
    .line 132
    iget v5, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 133
    .line 134
    move-object/from16 v17, v8

    .line 135
    .line 136
    iget-object v8, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 137
    .line 138
    if-ge v13, v5, :cond_2

    .line 139
    .line 140
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 141
    .line 142
    invoke-direct {v4, v8, v12, v13}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 143
    .line 144
    .line 145
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move v12, v13

    .line 149
    move-object/from16 v5, v16

    .line 150
    .line 151
    move-object/from16 v8, v17

    .line 152
    .line 153
    :goto_3
    const/4 v4, 0x0

    .line 154
    goto :goto_2

    .line 155
    :cond_2
    move/from16 v18, v10

    .line 156
    .line 157
    new-instance v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 158
    .line 159
    invoke-direct {v10, v8, v12, v5}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 160
    .line 161
    .line 162
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 163
    .line 164
    .line 165
    iget v12, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 166
    .line 167
    :goto_4
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 168
    .line 169
    .line 170
    move-result v4

    .line 171
    if-nez v4, :cond_3

    .line 172
    .line 173
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 174
    .line 175
    .line 176
    move-result-object v4

    .line 177
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 178
    .line 179
    iget v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 180
    .line 181
    if-ne v12, v4, :cond_3

    .line 182
    .line 183
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 184
    .line 185
    .line 186
    goto :goto_4

    .line 187
    :cond_3
    move-object/from16 v5, v16

    .line 188
    .line 189
    move-object/from16 v8, v17

    .line 190
    .line 191
    move/from16 v10, v18

    .line 192
    .line 193
    goto :goto_3

    .line 194
    :cond_4
    move-object/from16 v16, v5

    .line 195
    .line 196
    move-object/from16 v17, v8

    .line 197
    .line 198
    move/from16 v18, v10

    .line 199
    .line 200
    if-ge v12, v13, :cond_5

    .line 201
    .line 202
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 203
    .line 204
    invoke-direct {v4, v3, v12, v13}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 205
    .line 206
    .line 207
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 208
    .line 209
    .line 210
    move v12, v13

    .line 211
    :cond_5
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    .line 212
    .line 213
    .line 214
    move-result-object v4

    .line 215
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 216
    .line 217
    if-eqz v4, :cond_9

    .line 218
    .line 219
    iget v5, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 220
    .line 221
    iget-object v8, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 222
    .line 223
    iget v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 224
    .line 225
    if-ne v4, v13, :cond_6

    .line 226
    .line 227
    if-ne v5, v14, :cond_6

    .line 228
    .line 229
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 233
    .line 234
    check-cast v8, Landroidx/compose/ui/text/ParagraphStyle;

    .line 235
    .line 236
    invoke-virtual {v8, v15}, Landroidx/compose/ui/text/ParagraphStyle;->merge(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    invoke-direct {v4, v5, v13, v14}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v9, v4}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_6
    if-ne v4, v5, :cond_7

    .line 248
    .line 249
    new-instance v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 250
    .line 251
    invoke-direct {v10, v8, v4, v5}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 252
    .line 253
    .line 254
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 255
    .line 256
    .line 257
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 258
    .line 259
    .line 260
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 261
    .line 262
    invoke-direct {v4, v15, v13, v14}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v9, v4}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_7
    if-lt v5, v14, :cond_8

    .line 270
    .line 271
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 272
    .line 273
    check-cast v8, Landroidx/compose/ui/text/ParagraphStyle;

    .line 274
    .line 275
    invoke-virtual {v8, v15}, Landroidx/compose/ui/text/ParagraphStyle;->merge(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    .line 276
    .line 277
    .line 278
    move-result-object v5

    .line 279
    invoke-direct {v4, v5, v13, v14}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 280
    .line 281
    .line 282
    invoke-virtual {v9, v4}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 283
    .line 284
    .line 285
    goto :goto_5

    .line 286
    :cond_8
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda1;->m$1()V

    .line 287
    .line 288
    .line 289
    throw p3

    .line 290
    :cond_9
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 291
    .line 292
    invoke-direct {v4, v15, v13, v14}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 293
    .line 294
    .line 295
    invoke-virtual {v9, v4}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    :goto_5
    add-int/lit8 v11, v11, 0x1

    .line 299
    .line 300
    move-object/from16 v5, v16

    .line 301
    .line 302
    move-object/from16 v8, v17

    .line 303
    .line 304
    move/from16 v10, v18

    .line 305
    .line 306
    const/4 v4, 0x0

    .line 307
    goto/16 :goto_1

    .line 308
    .line 309
    :cond_a
    move-object/from16 v17, v8

    .line 310
    .line 311
    const/16 p3, 0x0

    .line 312
    .line 313
    :goto_6
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 314
    .line 315
    .line 316
    move-result v4

    .line 317
    if-gt v12, v4, :cond_c

    .line 318
    .line 319
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 320
    .line 321
    .line 322
    move-result v4

    .line 323
    if-nez v4, :cond_c

    .line 324
    .line 325
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 326
    .line 327
    .line 328
    move-result-object v4

    .line 329
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 330
    .line 331
    new-instance v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 332
    .line 333
    iget-object v8, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 334
    .line 335
    iget v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 336
    .line 337
    invoke-direct {v5, v8, v12, v4}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 338
    .line 339
    .line 340
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 341
    .line 342
    .line 343
    :goto_7
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 344
    .line 345
    .line 346
    move-result v5

    .line 347
    if-nez v5, :cond_b

    .line 348
    .line 349
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 350
    .line 351
    .line 352
    move-result-object v5

    .line 353
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 354
    .line 355
    iget v5, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 356
    .line 357
    if-ne v4, v5, :cond_b

    .line 358
    .line 359
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 360
    .line 361
    .line 362
    goto :goto_7

    .line 363
    :cond_b
    move v12, v4

    .line 364
    goto :goto_6

    .line 365
    :cond_c
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 366
    .line 367
    .line 368
    move-result v4

    .line 369
    if-ge v12, v4, :cond_d

    .line 370
    .line 371
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 372
    .line 373
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 374
    .line 375
    .line 376
    move-result v5

    .line 377
    invoke-direct {v4, v3, v12, v5}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 378
    .line 379
    .line 380
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 381
    .line 382
    .line 383
    :cond_d
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 384
    .line 385
    .line 386
    move-result v4

    .line 387
    if-eqz v4, :cond_e

    .line 388
    .line 389
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 390
    .line 391
    const/4 v5, 0x0

    .line 392
    invoke-direct {v4, v3, v5, v5}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 393
    .line 394
    .line 395
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 396
    .line 397
    .line 398
    goto :goto_8

    .line 399
    :cond_e
    const/4 v5, 0x0

    .line 400
    :goto_8
    new-instance v4, Ljava/util/ArrayList;

    .line 401
    .line 402
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 403
    .line 404
    .line 405
    move-result v8

    .line 406
    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 407
    .line 408
    .line 409
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 410
    .line 411
    .line 412
    move-result v8

    .line 413
    move v9, v5

    .line 414
    :goto_9
    if-ge v9, v8, :cond_1c

    .line 415
    .line 416
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 417
    .line 418
    .line 419
    move-result-object v10

    .line 420
    check-cast v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 421
    .line 422
    iget v11, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 423
    .line 424
    iget v12, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 425
    .line 426
    new-instance v13, Landroidx/compose/ui/text/AnnotatedString;

    .line 427
    .line 428
    if-eq v11, v12, :cond_f

    .line 429
    .line 430
    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 431
    .line 432
    .line 433
    move-result-object v14

    .line 434
    goto :goto_a

    .line 435
    :cond_f
    const-string v14, ""

    .line 436
    .line 437
    :goto_a
    if-ne v11, v12, :cond_11

    .line 438
    .line 439
    :goto_b
    move-object/from16 v5, p3

    .line 440
    .line 441
    move-object/from16 v16, v6

    .line 442
    .line 443
    :cond_10
    move-object/from16 v25, v7

    .line 444
    .line 445
    move/from16 v26, v8

    .line 446
    .line 447
    move/from16 v27, v9

    .line 448
    .line 449
    goto/16 :goto_f

    .line 450
    .line 451
    :cond_11
    iget-object v15, v1, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    .line 452
    .line 453
    if-nez v15, :cond_12

    .line 454
    .line 455
    goto :goto_b

    .line 456
    :cond_12
    if-nez v11, :cond_14

    .line 457
    .line 458
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 459
    .line 460
    .line 461
    move-result v5

    .line 462
    if-lt v12, v5, :cond_14

    .line 463
    .line 464
    new-instance v5, Ljava/util/ArrayList;

    .line 465
    .line 466
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 467
    .line 468
    .line 469
    move-result v1

    .line 470
    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 471
    .line 472
    .line 473
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    .line 474
    .line 475
    .line 476
    move-result v1

    .line 477
    move-object/from16 v16, v6

    .line 478
    .line 479
    const/4 v6, 0x0

    .line 480
    :goto_c
    if-ge v6, v1, :cond_10

    .line 481
    .line 482
    move/from16 v18, v1

    .line 483
    .line 484
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 485
    .line 486
    .line 487
    move-result-object v1

    .line 488
    move/from16 v19, v6

    .line 489
    .line 490
    move-object v6, v1

    .line 491
    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 492
    .line 493
    iget-object v6, v6, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 494
    .line 495
    check-cast v6, Landroidx/compose/ui/text/AnnotatedString$Annotation;

    .line 496
    .line 497
    instance-of v6, v6, Landroidx/compose/ui/text/ParagraphStyle;

    .line 498
    .line 499
    if-nez v6, :cond_13

    .line 500
    .line 501
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 502
    .line 503
    .line 504
    :cond_13
    add-int/lit8 v6, v19, 0x1

    .line 505
    .line 506
    move/from16 v1, v18

    .line 507
    .line 508
    goto :goto_c

    .line 509
    :cond_14
    move-object/from16 v16, v6

    .line 510
    .line 511
    new-instance v5, Ljava/util/ArrayList;

    .line 512
    .line 513
    invoke-interface {v15}, Ljava/util/List;->size()I

    .line 514
    .line 515
    .line 516
    move-result v1

    .line 517
    invoke-direct {v5, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 518
    .line 519
    .line 520
    invoke-interface {v15}, Ljava/util/Collection;->size()I

    .line 521
    .line 522
    .line 523
    move-result v1

    .line 524
    const/4 v6, 0x0

    .line 525
    :goto_d
    if-ge v6, v1, :cond_10

    .line 526
    .line 527
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 528
    .line 529
    .line 530
    move-result-object v18

    .line 531
    move/from16 v19, v1

    .line 532
    .line 533
    move-object/from16 v1, v18

    .line 534
    .line 535
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 536
    .line 537
    move/from16 v18, v6

    .line 538
    .line 539
    iget-object v6, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 540
    .line 541
    move-object/from16 v20, v6

    .line 542
    .line 543
    iget v6, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 544
    .line 545
    move-object/from16 v25, v7

    .line 546
    .line 547
    move-object/from16 v7, v20

    .line 548
    .line 549
    check-cast v7, Landroidx/compose/ui/text/AnnotatedString$Annotation;

    .line 550
    .line 551
    instance-of v7, v7, Landroidx/compose/ui/text/ParagraphStyle;

    .line 552
    .line 553
    if-nez v7, :cond_15

    .line 554
    .line 555
    iget v7, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 556
    .line 557
    invoke-static {v11, v12, v6, v7}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    .line 558
    .line 559
    .line 560
    move-result v20

    .line 561
    if-eqz v20, :cond_15

    .line 562
    .line 563
    move/from16 v26, v8

    .line 564
    .line 565
    iget-object v8, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->tag:Ljava/lang/String;

    .line 566
    .line 567
    iget-object v1, v1, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 568
    .line 569
    check-cast v1, Landroidx/compose/ui/text/AnnotatedString$Annotation;

    .line 570
    .line 571
    invoke-static {v6, v11, v12}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 572
    .line 573
    .line 574
    move-result v6

    .line 575
    sub-int/2addr v6, v11

    .line 576
    invoke-static {v7, v11, v12}, Lkotlin/ranges/RangesKt;->coerceIn(III)I

    .line 577
    .line 578
    .line 579
    move-result v7

    .line 580
    sub-int/2addr v7, v11

    .line 581
    move/from16 v27, v9

    .line 582
    .line 583
    new-instance v9, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 584
    .line 585
    invoke-direct {v9, v6, v8, v1, v7}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(ILjava/lang/String;Ljava/lang/Object;I)V

    .line 586
    .line 587
    .line 588
    invoke-virtual {v5, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 589
    .line 590
    .line 591
    goto :goto_e

    .line 592
    :cond_15
    move/from16 v26, v8

    .line 593
    .line 594
    move/from16 v27, v9

    .line 595
    .line 596
    :goto_e
    add-int/lit8 v6, v18, 0x1

    .line 597
    .line 598
    move/from16 v1, v19

    .line 599
    .line 600
    move-object/from16 v7, v25

    .line 601
    .line 602
    move/from16 v8, v26

    .line 603
    .line 604
    move/from16 v9, v27

    .line 605
    .line 606
    goto :goto_d

    .line 607
    :goto_f
    if-nez v5, :cond_16

    .line 608
    .line 609
    move-object/from16 v5, v17

    .line 610
    .line 611
    :cond_16
    invoke-direct {v13, v14, v5}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 612
    .line 613
    .line 614
    iget-object v1, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 615
    .line 616
    check-cast v1, Landroidx/compose/ui/text/ParagraphStyle;

    .line 617
    .line 618
    iget v5, v1, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    .line 619
    .line 620
    if-nez v5, :cond_17

    .line 621
    .line 622
    iget v5, v3, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    .line 623
    .line 624
    iget v6, v1, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    .line 625
    .line 626
    iget-wide v7, v1, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    .line 627
    .line 628
    iget-object v9, v1, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    .line 629
    .line 630
    iget-object v10, v1, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 631
    .line 632
    iget-object v15, v1, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 633
    .line 634
    move/from16 v30, v5

    .line 635
    .line 636
    iget v5, v1, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    .line 637
    .line 638
    move/from16 v36, v5

    .line 639
    .line 640
    iget v5, v1, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    .line 641
    .line 642
    iget-object v1, v1, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    .line 643
    .line 644
    new-instance v28, Landroidx/compose/ui/text/ParagraphStyle;

    .line 645
    .line 646
    move-object/from16 v38, v1

    .line 647
    .line 648
    move/from16 v37, v5

    .line 649
    .line 650
    move/from16 v29, v6

    .line 651
    .line 652
    move-wide/from16 v31, v7

    .line 653
    .line 654
    move-object/from16 v33, v9

    .line 655
    .line 656
    move-object/from16 v34, v10

    .line 657
    .line 658
    move-object/from16 v35, v15

    .line 659
    .line 660
    invoke-direct/range {v28 .. v38}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)V

    .line 661
    .line 662
    .line 663
    move-object/from16 v1, v28

    .line 664
    .line 665
    :cond_17
    new-instance v5, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    .line 666
    .line 667
    new-instance v6, Landroidx/compose/ui/text/TextStyle;

    .line 668
    .line 669
    iget-object v7, v2, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 670
    .line 671
    invoke-virtual {v3, v1}, Landroidx/compose/ui/text/ParagraphStyle;->merge(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    .line 672
    .line 673
    .line 674
    move-result-object v1

    .line 675
    invoke-direct {v6, v7, v1}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;)V

    .line 676
    .line 677
    .line 678
    iget-object v1, v13, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    .line 679
    .line 680
    if-nez v1, :cond_18

    .line 681
    .line 682
    move-object/from16 v21, v17

    .line 683
    .line 684
    goto :goto_10

    .line 685
    :cond_18
    move-object/from16 v21, v1

    .line 686
    .line 687
    :goto_10
    iget-object v1, v0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 688
    .line 689
    check-cast v1, Ljava/util/List;

    .line 690
    .line 691
    new-instance v7, Ljava/util/ArrayList;

    .line 692
    .line 693
    invoke-interface {v1}, Ljava/util/List;->size()I

    .line 694
    .line 695
    .line 696
    move-result v8

    .line 697
    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 698
    .line 699
    .line 700
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    .line 701
    .line 702
    .line 703
    move-result v8

    .line 704
    const/4 v9, 0x0

    .line 705
    :goto_11
    if-ge v9, v8, :cond_1b

    .line 706
    .line 707
    invoke-interface {v1, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 708
    .line 709
    .line 710
    move-result-object v10

    .line 711
    check-cast v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 712
    .line 713
    iget v13, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 714
    .line 715
    iget v15, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 716
    .line 717
    invoke-static {v11, v12, v13, v15}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    .line 718
    .line 719
    .line 720
    move-result v18

    .line 721
    if-eqz v18, :cond_1a

    .line 722
    .line 723
    if-gt v11, v13, :cond_19

    .line 724
    .line 725
    if-gt v15, v12, :cond_19

    .line 726
    .line 727
    :goto_12
    move-object/from16 v18, v1

    .line 728
    .line 729
    goto :goto_13

    .line 730
    :cond_19
    const-string v18, "placeholder can not overlap with paragraph."

    .line 731
    .line 732
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 733
    .line 734
    .line 735
    goto :goto_12

    .line 736
    :goto_13
    new-instance v1, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 737
    .line 738
    iget-object v10, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 739
    .line 740
    sub-int/2addr v13, v11

    .line 741
    sub-int/2addr v15, v11

    .line 742
    invoke-direct {v1, v10, v13, v15}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(Ljava/lang/Object;II)V

    .line 743
    .line 744
    .line 745
    invoke-virtual {v7, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 746
    .line 747
    .line 748
    goto :goto_14

    .line 749
    :cond_1a
    move-object/from16 v18, v1

    .line 750
    .line 751
    :goto_14
    add-int/lit8 v9, v9, 0x1

    .line 752
    .line 753
    move-object/from16 v1, v18

    .line 754
    .line 755
    goto :goto_11

    .line 756
    :cond_1b
    new-instance v18, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 757
    .line 758
    move-object/from16 v24, p4

    .line 759
    .line 760
    move-object/from16 v23, p5

    .line 761
    .line 762
    move-object/from16 v20, v6

    .line 763
    .line 764
    move-object/from16 v22, v7

    .line 765
    .line 766
    move-object/from16 v19, v14

    .line 767
    .line 768
    invoke-direct/range {v18 .. v24}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V

    .line 769
    .line 770
    .line 771
    move-object/from16 v1, v18

    .line 772
    .line 773
    invoke-direct {v5, v1, v11, v12}, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;II)V

    .line 774
    .line 775
    .line 776
    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 777
    .line 778
    .line 779
    add-int/lit8 v9, v27, 0x1

    .line 780
    .line 781
    move-object/from16 v1, p1

    .line 782
    .line 783
    move-object/from16 v6, v16

    .line 784
    .line 785
    move-object/from16 v7, v25

    .line 786
    .line 787
    move/from16 v8, v26

    .line 788
    .line 789
    const/4 v5, 0x0

    .line 790
    goto/16 :goto_9

    .line 791
    .line 792
    :cond_1c
    iput-object v4, v0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 793
    .line 794
    return-void
.end method

.method public constructor <init>(Landroidx/media/MediaBrowserServiceCompat;)V
    .locals 1

    const/4 v0, 0x6

    iput v0, p0, Lcoil3/ComponentRegistry$Builder;->$r8$classId:I

    .line 916
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 917
    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 918
    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 919
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcoil3/ComponentRegistry;)V
    .locals 6

    const/4 v0, 0x0

    iput v0, p0, Lcoil3/ComponentRegistry$Builder;->$r8$classId:I

    .line 895
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 896
    iget-object v1, p1, Lcoil3/ComponentRegistry;->interceptors:Ljava/util/List;

    .line 897
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 898
    iget-object v1, p1, Lcoil3/ComponentRegistry;->mappers:Ljava/util/List;

    .line 899
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 900
    iget-object v1, p1, Lcoil3/ComponentRegistry;->keyers:Ljava/util/List;

    .line 901
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->toMutableList(Ljava/util/Collection;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 902
    iget-object v1, p1, Lcoil3/ComponentRegistry;->fetcherFactories$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {v1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    .line 903
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 904
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    .line 905
    check-cast v3, Lkotlin/Pair;

    .line 906
    new-instance v4, Landroidx/work/Worker$$ExternalSyntheticLambda0;

    const/16 v5, 0x15

    invoke-direct {v4, v3, v5}, Landroidx/work/Worker$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 907
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 908
    :cond_0
    iput-object v2, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 909
    iget-object p1, p1, Lcoil3/ComponentRegistry;->decoderFactories$delegate:Lkotlin/SynchronizedLazyImpl;

    invoke-virtual {p1}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 910
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 911
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 912
    check-cast v2, Lcoil3/decode/Decoder$Factory;

    .line 913
    new-instance v3, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda2;

    invoke-direct {v3, v2, v0}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda2;-><init>(Lcoil3/decode/Decoder$Factory;I)V

    .line 914
    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 915
    :cond_1
    iput-object v1, p0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    const/4 v0, 0x5

    iput v0, p0, Lcoil3/ComponentRegistry$Builder;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 808
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 809
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 810
    iput-object v0, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 811
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 812
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 813
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 814
    new-instance p1, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;

    const/4 v0, 0x2

    invoke-direct {p1, p0, v0}, Landroidx/activity/ComponentActivity$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Object;I)V

    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V
    .locals 1

    const/16 v0, 0x9

    iput v0, p0, Lcoil3/ComponentRegistry$Builder;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 815
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 816
    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 817
    iput-object p2, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 818
    iput-object p3, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 819
    iput-object p4, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 820
    iput-object p5, p0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/concurrent/TaskRunner;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lcoil3/ComponentRegistry$Builder;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 920
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 921
    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 922
    sget-object p1, Lokhttp3/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Lokhttp3/internal/http2/Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1;

    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 923
    sget-object p1, Lokhttp3/internal/http2/FlowControlListener$None;->INSTANCE:Lokhttp3/internal/http2/FlowControlListener$None;

    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/koin/core/Koin;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcoil3/ComponentRegistry$Builder;->$r8$classId:I

    .line 874
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 875
    iget-object v0, p1, Lorg/koin/core/Koin;->logger:Ljava/lang/Object;

    check-cast v0, Lio/noties/markwon/core/MarkwonTheme;

    .line 876
    iput-object v0, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 877
    iget-object v0, p1, Lorg/koin/core/Koin;->scopeRegistry:Ljava/lang/Object;

    check-cast v0, Landroidx/transition/Transition$1;

    .line 878
    iput-object v0, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 879
    iget-object v0, p1, Lorg/koin/core/Koin;->instanceRegistry:Ljava/lang/Object;

    check-cast v0, Landroidx/transition/Transition$1;

    .line 880
    iput-object v0, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 881
    iget-object v0, p1, Lorg/koin/core/Koin;->propertyRegistry:Ljava/lang/Object;

    check-cast v0, Lio/noties/markwon/BlockHandlerDef;

    .line 882
    iput-object v0, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 883
    iget-object p1, p1, Lorg/koin/core/Koin;->optionRegistry:Ljava/lang/Object;

    check-cast p1, Lokhttp3/ConnectionPool;

    .line 884
    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lorg/koin/core/logger/Logger;Lorg/koin/core/scope/Scope;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/parameter/ParametersHolder;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lcoil3/ComponentRegistry$Builder;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 821
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 822
    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 823
    iput-object p2, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 824
    iput-object p3, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 825
    iput-object p4, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 826
    invoke-static {p3}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/schabi/newpipe/App;Lorg/acra/config/CoreConfiguration;Lcom/grack/nanojson/JsonBuilder;)V
    .locals 1

    const/16 v0, 0xc

    iput v0, p0, Lcoil3/ComponentRegistry$Builder;->$r8$classId:I

    .line 869
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    iput-object p2, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    iput-object p3, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 870
    new-instance p2, Lorg/acra/file/ReportLocator;

    const/4 p3, 0x0

    invoke-direct {p2, p1, p3}, Lorg/acra/file/ReportLocator;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 871
    new-instance p1, Lokio/Path$Companion;

    const/4 p2, 0x7

    .line 872
    invoke-direct {p1, p2}, Lokio/Path$Companion;-><init>(I)V

    .line 873
    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lus/shandian/giga/service/DownloadManagerService;)V
    .locals 2

    const/16 v0, 0x11

    iput v0, p0, Lcoil3/ComponentRegistry$Builder;->$r8$classId:I

    .line 800
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 801
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "LockManager@"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 802
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-class v1, Landroid/os/PowerManager;

    .line 803
    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 804
    check-cast v0, Landroid/os/PowerManager;

    iput-object v0, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 805
    const-class v0, Landroid/net/wifi/WifiManager;

    .line 806
    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    .line 807
    check-cast p1, Landroid/net/wifi/WifiManager;

    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    return-void
.end method

.method public static registerSerializer$default(Lcoil3/ComponentRegistry$Builder;Lkotlin/jvm/internal/ClassReference;Lkotlinx/serialization/modules/ContextualProvider;)V
    .locals 1

    .line 1
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 6
    .line 7
    .line 8
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    check-cast v0, Lkotlinx/serialization/modules/ContextualProvider;

    .line 13
    .line 14
    if-eqz v0, :cond_1

    .line 15
    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 17
    .line 18
    .line 19
    move-result v0

    .line 20
    if-eqz v0, :cond_0

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_0
    new-instance p0, Lkotlin/time/InstantFormatException;

    .line 24
    .line 25
    new-instance p2, Ljava/lang/StringBuilder;

    .line 26
    .line 27
    const-string v0, "Contextual serializer or serializer provider for "

    .line 28
    .line 29
    invoke-direct {p2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 33
    .line 34
    .line 35
    const-string p1, " already registered in this module"

    .line 36
    .line 37
    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 38
    .line 39
    .line 40
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object p1

    .line 44
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    throw p0

    .line 48
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    .line 50
    .line 51
    invoke-static {p1}, Landroidx/work/OperationKt;->getJavaClass(Lkotlin/jvm/internal/ClassReference;)Ljava/lang/Class;

    .line 52
    .line 53
    .line 54
    move-result-object p0

    .line 55
    invoke-virtual {p0}, Ljava/lang/Class;->isInterface()Z

    .line 56
    .line 57
    .line 58
    return-void
.end method


# virtual methods
.method public add(Lcoil3/fetch/Fetcher$Factory;Lkotlin/jvm/internal/ClassReference;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    new-instance v0, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;

    .line 6
    .line 7
    const/4 v1, 0x0

    .line 8
    invoke-direct {v0, p1, p2, v1}, Lcoil3/ComponentRegistry$Builder$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 9
    .line 10
    .line 11
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public add(Lcoil3/map/FileMapper;Lkotlin/jvm/internal/ClassReference;)V
    .locals 1

    .line 15
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    .line 16
    new-instance v0, Lkotlin/Pair;

    invoke-direct {v0, p1, p2}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 17
    invoke-virtual {p0, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addAwaiter(Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;Lkotlin/jvm/functions/Function0;)Landroidx/compose/runtime/CancellationHandle;
    .locals 5

    .line 1
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    const/4 v1, -0x1

    .line 7
    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 8
    .line 9
    iget-object v1, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v2, Ljava/lang/Throwable;

    .line 15
    .line 16
    if-eqz v2, :cond_0

    .line 17
    .line 18
    invoke-virtual {p1, v2}, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;->resumeWithException(Ljava/lang/Throwable;)V

    .line 19
    .line 20
    .line 21
    sget-object p0, Landroidx/compose/runtime/NeverEqualPolicy;->Empty:Landroidx/compose/foundation/layout/Arrangement$$ExternalSyntheticLambda0;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 22
    .line 23
    monitor-exit v1

    .line 24
    return-object p0

    .line 25
    :catchall_0
    move-exception p0

    .line 26
    goto :goto_2

    .line 27
    :cond_0
    :try_start_1
    iget-object v2, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 28
    .line 29
    check-cast v2, Landroidx/compose/runtime/internal/AtomicInt;

    .line 30
    .line 31
    :cond_1
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 32
    .line 33
    .line 34
    move-result v3

    .line 35
    add-int/lit8 v4, v3, 0x1

    .line 36
    .line 37
    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 38
    .line 39
    .line 40
    move-result v3

    .line 41
    if-eqz v3, :cond_1

    .line 42
    .line 43
    const v2, 0x7ffffff

    .line 44
    .line 45
    .line 46
    and-int/2addr v2, v4

    .line 47
    const/4 v3, 0x1

    .line 48
    if-ne v2, v3, :cond_2

    .line 49
    .line 50
    goto :goto_0

    .line 51
    :cond_2
    const/4 v3, 0x0

    .line 52
    :goto_0
    ushr-int/lit8 v2, v4, 0x1b

    .line 53
    .line 54
    and-int/lit8 v2, v2, 0xf

    .line 55
    .line 56
    iput v2, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 57
    .line 58
    iget-object v2, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 59
    .line 60
    check-cast v2, Landroidx/collection/MutableObjectList;

    .line 61
    .line 62
    invoke-virtual {v2, p1}, Landroidx/collection/MutableObjectList;->add(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 63
    .line 64
    .line 65
    monitor-exit v1

    .line 66
    if-eqz v3, :cond_3

    .line 67
    .line 68
    if-eqz p2, :cond_3

    .line 69
    .line 70
    :try_start_2
    invoke-interface {p2}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 71
    .line 72
    .line 73
    goto :goto_1

    .line 74
    :catchall_1
    move-exception p2

    .line 75
    invoke-virtual {p0, p2}, Lcoil3/ComponentRegistry$Builder;->fail(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_1
    new-instance p2, Landroidx/cardview/widget/CardView$1;

    .line 79
    .line 80
    new-instance v1, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;

    .line 81
    .line 82
    const/4 v2, 0x6

    .line 83
    invoke-direct {v1, v2, p1, p0, v0}, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 84
    .line 85
    .line 86
    invoke-direct {p2, v1}, Landroidx/cardview/widget/CardView$1;-><init>(Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;)V

    .line 87
    .line 88
    .line 89
    return-object p2

    .line 90
    :goto_2
    monitor-exit v1

    .line 91
    throw p0
.end method

.method public build()Lcoil3/ComponentRegistry$Builder;
    .locals 6

    .line 1
    new-instance v0, Lcoil3/ComponentRegistry$Builder;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/HashMap;

    .line 6
    .line 7
    iget-object v2, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Ljava/util/HashMap;

    .line 10
    .line 11
    iget-object v3, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Ljava/util/HashMap;

    .line 14
    .line 15
    iget-object v4, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 16
    .line 17
    check-cast v4, Ljava/util/HashMap;

    .line 18
    .line 19
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 20
    .line 21
    move-object v5, p0

    .line 22
    check-cast v5, Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-direct/range {v0 .. v5}, Lcoil3/ComponentRegistry$Builder;-><init>(Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;Ljava/util/Map;)V

    .line 25
    .line 26
    .line 27
    return-object v0
.end method

.method public contextual(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance v0, Lkotlinx/serialization/modules/ContextualProvider$WithTypeArguments;

    .line 5
    .line 6
    invoke-direct {v0, p2}, Lkotlinx/serialization/modules/ContextualProvider$WithTypeArguments;-><init>(Lkotlin/jvm/functions/Function1;)V

    .line 7
    .line 8
    .line 9
    invoke-static {p0, p1, v0}, Lcoil3/ComponentRegistry$Builder;->registerSerializer$default(Lcoil3/ComponentRegistry$Builder;Lkotlin/jvm/internal/ClassReference;Lkotlinx/serialization/modules/ContextualProvider;)V

    .line 10
    .line 11
    .line 12
    return-void
.end method

.method public contextual(Lkotlin/jvm/internal/ClassReference;Lkotlinx/serialization/KSerializer;)V
    .locals 1

    .line 13
    new-instance v0, Lkotlinx/serialization/modules/ContextualProvider$Argless;

    invoke-direct {v0, p2}, Lkotlinx/serialization/modules/ContextualProvider$Argless;-><init>(Lkotlinx/serialization/KSerializer;)V

    invoke-static {p0, p1, v0}, Lcoil3/ComponentRegistry$Builder;->registerSerializer$default(Lcoil3/ComponentRegistry$Builder;Lkotlin/jvm/internal/ClassReference;Lkotlinx/serialization/modules/ContextualProvider;)V

    return-void
.end method

.method public dumpTo(Lkotlinx/serialization/modules/SerializersModuleCollector;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/Map;

    .line 4
    .line 5
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v0

    .line 13
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_2

    .line 18
    .line 19
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v1

    .line 23
    check-cast v1, Ljava/util/Map$Entry;

    .line 24
    .line 25
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 26
    .line 27
    .line 28
    move-result-object v2

    .line 29
    check-cast v2, Lkotlin/jvm/internal/ClassReference;

    .line 30
    .line 31
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v1

    .line 35
    check-cast v1, Lkotlinx/serialization/modules/ContextualProvider;

    .line 36
    .line 37
    instance-of v3, v1, Lkotlinx/serialization/modules/ContextualProvider$Argless;

    .line 38
    .line 39
    if-eqz v3, :cond_0

    .line 40
    .line 41
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 42
    .line 43
    .line 44
    check-cast v1, Lkotlinx/serialization/modules/ContextualProvider$Argless;

    .line 45
    .line 46
    iget-object v1, v1, Lkotlinx/serialization/modules/ContextualProvider$Argless;->serializer:Lkotlinx/serialization/KSerializer;

    .line 47
    .line 48
    invoke-interface {p1, v2, v1}, Lkotlinx/serialization/modules/SerializersModuleCollector;->contextual(Lkotlin/jvm/internal/ClassReference;Lkotlinx/serialization/KSerializer;)V

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :cond_0
    instance-of v3, v1, Lkotlinx/serialization/modules/ContextualProvider$WithTypeArguments;

    .line 53
    .line 54
    if-eqz v3, :cond_1

    .line 55
    .line 56
    check-cast v1, Lkotlinx/serialization/modules/ContextualProvider$WithTypeArguments;

    .line 57
    .line 58
    iget-object v1, v1, Lkotlinx/serialization/modules/ContextualProvider$WithTypeArguments;->provider:Lkotlin/jvm/functions/Function1;

    .line 59
    .line 60
    invoke-interface {p1, v2, v1}, Lkotlinx/serialization/modules/SerializersModuleCollector;->contextual(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_1
    invoke-static {}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m()V

    .line 65
    .line 66
    .line 67
    return-void

    .line 68
    :cond_2
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Ljava/util/Map;

    .line 71
    .line 72
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 81
    .line 82
    .line 83
    move-result v1

    .line 84
    if-eqz v1, :cond_4

    .line 85
    .line 86
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    check-cast v1, Ljava/util/Map$Entry;

    .line 91
    .line 92
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object v2

    .line 96
    check-cast v2, Lkotlin/jvm/internal/ClassReference;

    .line 97
    .line 98
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 99
    .line 100
    .line 101
    move-result-object v1

    .line 102
    check-cast v1, Ljava/util/Map;

    .line 103
    .line 104
    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 105
    .line 106
    .line 107
    move-result-object v1

    .line 108
    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 109
    .line 110
    .line 111
    move-result-object v1

    .line 112
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 113
    .line 114
    .line 115
    move-result v3

    .line 116
    if-eqz v3, :cond_3

    .line 117
    .line 118
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object v3

    .line 122
    check-cast v3, Ljava/util/Map$Entry;

    .line 123
    .line 124
    invoke-interface {v3}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 125
    .line 126
    .line 127
    move-result-object v4

    .line 128
    check-cast v4, Lkotlin/jvm/internal/ClassReference;

    .line 129
    .line 130
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 131
    .line 132
    .line 133
    move-result-object v3

    .line 134
    check-cast v3, Lkotlinx/serialization/KSerializer;

    .line 135
    .line 136
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 137
    .line 138
    .line 139
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 140
    .line 141
    .line 142
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 143
    .line 144
    .line 145
    invoke-interface {p1, v2, v4, v3}, Lkotlinx/serialization/modules/SerializersModuleCollector;->polymorphic(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/internal/ClassReference;Lkotlinx/serialization/KSerializer;)V

    .line 146
    .line 147
    .line 148
    goto :goto_1

    .line 149
    :cond_4
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 150
    .line 151
    check-cast v0, Ljava/util/Map;

    .line 152
    .line 153
    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 154
    .line 155
    .line 156
    move-result-object v0

    .line 157
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 162
    .line 163
    .line 164
    move-result v1

    .line 165
    const/4 v2, 0x1

    .line 166
    if-eqz v1, :cond_5

    .line 167
    .line 168
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 169
    .line 170
    .line 171
    move-result-object v1

    .line 172
    check-cast v1, Ljava/util/Map$Entry;

    .line 173
    .line 174
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v3

    .line 178
    check-cast v3, Lkotlin/jvm/internal/ClassReference;

    .line 179
    .line 180
    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 181
    .line 182
    .line 183
    move-result-object v1

    .line 184
    check-cast v1, Lkotlin/jvm/functions/Function1;

    .line 185
    .line 186
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 187
    .line 188
    .line 189
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 190
    .line 191
    .line 192
    invoke-static {v2, v1}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    .line 193
    .line 194
    .line 195
    invoke-interface {p1, v3, v1}, Lkotlinx/serialization/modules/SerializersModuleCollector;->polymorphicDefaultSerializer(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V

    .line 196
    .line 197
    .line 198
    goto :goto_2

    .line 199
    :cond_5
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 200
    .line 201
    check-cast p0, Ljava/util/Map;

    .line 202
    .line 203
    invoke-interface {p0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 204
    .line 205
    .line 206
    move-result-object p0

    .line 207
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    :goto_3
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 212
    .line 213
    .line 214
    move-result v0

    .line 215
    if-eqz v0, :cond_6

    .line 216
    .line 217
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 218
    .line 219
    .line 220
    move-result-object v0

    .line 221
    check-cast v0, Ljava/util/Map$Entry;

    .line 222
    .line 223
    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 224
    .line 225
    .line 226
    move-result-object v1

    .line 227
    check-cast v1, Lkotlin/jvm/internal/ClassReference;

    .line 228
    .line 229
    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 230
    .line 231
    .line 232
    move-result-object v0

    .line 233
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 234
    .line 235
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 236
    .line 237
    .line 238
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 239
    .line 240
    .line 241
    invoke-static {v2, v0}, Lkotlin/jvm/internal/TypeIntrinsics;->beforeCheckcastToFunctionOfArity(ILjava/lang/Object;)V

    .line 242
    .line 243
    .line 244
    invoke-interface {p1, v1, v0}, Lkotlinx/serialization/modules/SerializersModuleCollector;->polymorphicDefaultDeserializer(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V

    .line 245
    .line 246
    .line 247
    goto :goto_3

    .line 248
    :cond_6
    return-void
.end method

.method public fail(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Ljava/lang/Throwable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    .line 8
    if-eqz v1, :cond_0

    .line 9
    .line 10
    monitor-exit v0

    .line 11
    return-void

    .line 12
    :cond_0
    :try_start_1
    iput-object p1, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v1, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Landroidx/collection/MutableObjectList;

    .line 17
    .line 18
    iget-object v2, v1, Landroidx/collection/ObjectList;->content:[Ljava/lang/Object;

    .line 19
    .line 20
    iget v1, v1, Landroidx/collection/ObjectList;->_size:I

    .line 21
    .line 22
    const/4 v3, 0x0

    .line 23
    :goto_0
    if-ge v3, v1, :cond_1

    .line 24
    .line 25
    aget-object v4, v2, v3

    .line 26
    .line 27
    check-cast v4, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;

    .line 28
    .line 29
    invoke-virtual {v4, p1}, Landroidx/compose/runtime/internal/AwaiterQueue$Awaiter;->resumeWithException(Ljava/lang/Throwable;)V

    .line 30
    .line 31
    .line 32
    add-int/lit8 v3, v3, 0x1

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :catchall_0
    move-exception p0

    .line 36
    goto :goto_1

    .line 37
    :cond_1
    iget-object p1, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Landroidx/collection/MutableObjectList;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/collection/MutableObjectList;->clear()V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, Landroidx/compose/runtime/internal/AtomicInt;

    .line 47
    .line 48
    :cond_2
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 49
    .line 50
    .line 51
    move-result p1

    .line 52
    ushr-int/lit8 v1, p1, 0x1b

    .line 53
    .line 54
    and-int/lit8 v1, v1, 0xf

    .line 55
    .line 56
    add-int/lit8 v1, v1, 0x1

    .line 57
    .line 58
    and-int/lit8 v1, v1, 0xf

    .line 59
    .line 60
    shl-int/lit8 v1, v1, 0x1b

    .line 61
    .line 62
    invoke-virtual {p0, p1, v1}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 63
    .line 64
    .line 65
    move-result p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 66
    if-eqz p1, :cond_2

    .line 67
    .line 68
    monitor-exit v0

    .line 69
    return-void

    .line 70
    :goto_1
    monitor-exit v0

    .line 71
    throw p0
.end method

.method public flushAndDispatchAwaiters(Lkotlin/jvm/functions/Function1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Landroidx/collection/MutableObjectList;

    .line 7
    .line 8
    iget-object v2, p0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Landroidx/collection/MutableObjectList;

    .line 11
    .line 12
    iput-object v2, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object v1, p0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 17
    .line 18
    check-cast p0, Landroidx/compose/runtime/internal/AtomicInt;

    .line 19
    .line 20
    :cond_0
    invoke-virtual {p0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 21
    .line 22
    .line 23
    move-result v2

    .line 24
    ushr-int/lit8 v3, v2, 0x1b

    .line 25
    .line 26
    and-int/lit8 v3, v3, 0xf

    .line 27
    .line 28
    add-int/lit8 v3, v3, 0x1

    .line 29
    .line 30
    and-int/lit8 v3, v3, 0xf

    .line 31
    .line 32
    shl-int/lit8 v3, v3, 0x1b

    .line 33
    .line 34
    invoke-virtual {p0, v2, v3}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    .line 35
    .line 36
    .line 37
    move-result v2

    .line 38
    if-eqz v2, :cond_0

    .line 39
    .line 40
    iget p0, v1, Landroidx/collection/ObjectList;->_size:I

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_0
    if-ge v2, p0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroidx/collection/ObjectList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v3

    .line 49
    invoke-interface {p1, v3}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    add-int/lit8 v2, v2, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :catchall_0
    move-exception p0

    .line 56
    goto :goto_1

    .line 57
    :cond_1
    invoke-virtual {v1}, Landroidx/collection/MutableObjectList;->clear()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 58
    .line 59
    .line 60
    monitor-exit v0

    .line 61
    return-void

    .line 62
    :goto_1
    monitor-exit v0

    .line 63
    throw p0
.end method

.method public getDownstreamHorizontal(IZ)F
    .locals 1

    .line 1
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroid/text/Layout;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0, v0}, Landroid/text/Layout;->getLineEnd(I)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-le p1, v0, :cond_0

    .line 14
    .line 15
    move p1, v0

    .line 16
    :cond_0
    if-eqz p2, :cond_1

    .line 17
    .line 18
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 19
    .line 20
    .line 21
    move-result p0

    .line 22
    return p0

    .line 23
    :cond_1
    invoke-virtual {p0, p1}, Landroid/text/Layout;->getSecondaryHorizontal(I)F

    .line 24
    .line 25
    .line 26
    move-result p0

    .line 27
    return p0
.end method

.method public getHasStaleResolvedFonts()Z
    .locals 4

    .line 1
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    const/4 v1, 0x0

    .line 10
    move v2, v1

    .line 11
    :goto_0
    if-ge v2, v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v3

    .line 17
    check-cast v3, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    .line 18
    .line 19
    iget-object v3, v3, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;->intrinsics:Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 20
    .line 21
    invoke-virtual {v3}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;->getHasStaleResolvedFonts()Z

    .line 22
    .line 23
    .line 24
    move-result v3

    .line 25
    if-eqz v3, :cond_0

    .line 26
    .line 27
    const/4 p0, 0x1

    .line 28
    return p0

    .line 29
    :cond_0
    add-int/lit8 v2, v2, 0x1

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_1
    return v1
.end method

.method public getHorizontalPosition(IZZ)F
    .locals 28

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v3, v0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v3, Landroid/text/Layout;

    .line 12
    .line 13
    if-nez p3, :cond_0

    .line 14
    .line 15
    invoke-virtual/range {p0 .. p2}, Lcoil3/ComponentRegistry$Builder;->getDownstreamHorizontal(IZ)F

    .line 16
    .line 17
    .line 18
    move-result v0

    .line 19
    return v0

    .line 20
    :cond_0
    const/4 v5, 0x1

    .line 21
    if-gtz v1, :cond_1

    .line 22
    .line 23
    const/4 v6, 0x0

    .line 24
    goto :goto_0

    .line 25
    :cond_1
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 26
    .line 27
    .line 28
    move-result-object v6

    .line 29
    invoke-interface {v6}, Ljava/lang/CharSequence;->length()I

    .line 30
    .line 31
    .line 32
    move-result v6

    .line 33
    if-lt v1, v6, :cond_2

    .line 34
    .line 35
    invoke-virtual {v3}, Landroid/text/Layout;->getLineCount()I

    .line 36
    .line 37
    .line 38
    move-result v6

    .line 39
    sub-int/2addr v6, v5

    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-virtual {v3, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 42
    .line 43
    .line 44
    move-result v6

    .line 45
    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineStart(I)I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineEnd(I)I

    .line 50
    .line 51
    .line 52
    move-result v8

    .line 53
    if-eq v7, v1, :cond_3

    .line 54
    .line 55
    if-eq v8, v1, :cond_3

    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_3
    if-ne v7, v1, :cond_4

    .line 59
    .line 60
    if-eqz p3, :cond_6

    .line 61
    .line 62
    add-int/lit8 v6, v6, -0x1

    .line 63
    .line 64
    goto :goto_0

    .line 65
    :cond_4
    if-eqz p3, :cond_5

    .line 66
    .line 67
    goto :goto_0

    .line 68
    :cond_5
    add-int/lit8 v6, v6, 0x1

    .line 69
    .line 70
    :cond_6
    :goto_0
    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineStart(I)I

    .line 71
    .line 72
    .line 73
    move-result v7

    .line 74
    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineEnd(I)I

    .line 75
    .line 76
    .line 77
    move-result v8

    .line 78
    if-eq v1, v7, :cond_7

    .line 79
    .line 80
    if-eq v1, v8, :cond_7

    .line 81
    .line 82
    invoke-virtual/range {p0 .. p2}, Lcoil3/ComponentRegistry$Builder;->getDownstreamHorizontal(IZ)F

    .line 83
    .line 84
    .line 85
    move-result v0

    .line 86
    return v0

    .line 87
    :cond_7
    if-eqz v1, :cond_36

    .line 88
    .line 89
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 90
    .line 91
    .line 92
    move-result-object v9

    .line 93
    invoke-interface {v9}, Ljava/lang/CharSequence;->length()I

    .line 94
    .line 95
    .line 96
    move-result v9

    .line 97
    if-ne v1, v9, :cond_8

    .line 98
    .line 99
    goto/16 :goto_1a

    .line 100
    .line 101
    :cond_8
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 102
    .line 103
    .line 104
    move-result-object v9

    .line 105
    invoke-static {v2, v9}, Lorg/jsoup/Jsoup;->binarySearch$default(Ljava/util/ArrayList;Ljava/lang/Comparable;)I

    .line 106
    .line 107
    .line 108
    move-result v9

    .line 109
    if-gez v9, :cond_9

    .line 110
    .line 111
    add-int/2addr v9, v5

    .line 112
    neg-int v9, v9

    .line 113
    goto :goto_1

    .line 114
    :cond_9
    add-int/2addr v9, v5

    .line 115
    :goto_1
    if-eqz p3, :cond_a

    .line 116
    .line 117
    if-lez v9, :cond_a

    .line 118
    .line 119
    add-int/lit8 v10, v9, -0x1

    .line 120
    .line 121
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 122
    .line 123
    .line 124
    move-result-object v11

    .line 125
    check-cast v11, Ljava/lang/Number;

    .line 126
    .line 127
    invoke-virtual {v11}, Ljava/lang/Number;->intValue()I

    .line 128
    .line 129
    .line 130
    move-result v11

    .line 131
    if-ne v1, v11, :cond_a

    .line 132
    .line 133
    move v9, v10

    .line 134
    :cond_a
    if-nez v9, :cond_b

    .line 135
    .line 136
    const/4 v10, 0x0

    .line 137
    goto :goto_2

    .line 138
    :cond_b
    add-int/lit8 v10, v9, -0x1

    .line 139
    .line 140
    invoke-virtual {v2, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 141
    .line 142
    .line 143
    move-result-object v10

    .line 144
    check-cast v10, Ljava/lang/Number;

    .line 145
    .line 146
    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    .line 147
    .line 148
    .line 149
    move-result v10

    .line 150
    :goto_2
    invoke-virtual {v3, v10}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 151
    .line 152
    .line 153
    move-result v10

    .line 154
    invoke-virtual {v3, v10}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 155
    .line 156
    .line 157
    move-result v10

    .line 158
    const/4 v11, -0x1

    .line 159
    if-ne v10, v11, :cond_c

    .line 160
    .line 161
    move v10, v5

    .line 162
    goto :goto_3

    .line 163
    :cond_c
    const/4 v10, 0x0

    .line 164
    :goto_3
    invoke-virtual {v0, v8, v7}, Lcoil3/ComponentRegistry$Builder;->lineEndToVisibleEnd(II)I

    .line 165
    .line 166
    .line 167
    move-result v8

    .line 168
    if-nez v9, :cond_d

    .line 169
    .line 170
    const/4 v12, 0x0

    .line 171
    goto :goto_4

    .line 172
    :cond_d
    add-int/lit8 v12, v9, -0x1

    .line 173
    .line 174
    invoke-virtual {v2, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 175
    .line 176
    .line 177
    move-result-object v12

    .line 178
    check-cast v12, Ljava/lang/Number;

    .line 179
    .line 180
    invoke-virtual {v12}, Ljava/lang/Number;->intValue()I

    .line 181
    .line 182
    .line 183
    move-result v12

    .line 184
    :goto_4
    sub-int v13, v7, v12

    .line 185
    .line 186
    sub-int v12, v8, v12

    .line 187
    .line 188
    iget-object v14, v0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 189
    .line 190
    check-cast v14, Ljava/util/ArrayList;

    .line 191
    .line 192
    iget-object v15, v0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 193
    .line 194
    check-cast v15, [Z

    .line 195
    .line 196
    aget-boolean v16, v15, v9

    .line 197
    .line 198
    const/16 v17, 0x0

    .line 199
    .line 200
    if-eqz v16, :cond_e

    .line 201
    .line 202
    invoke-virtual {v14, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 203
    .line 204
    .line 205
    move-result-object v2

    .line 206
    check-cast v2, Ljava/text/Bidi;

    .line 207
    .line 208
    move/from16 v27, v6

    .line 209
    .line 210
    move/from16 v26, v8

    .line 211
    .line 212
    move v5, v11

    .line 213
    goto/16 :goto_b

    .line 214
    .line 215
    :cond_e
    if-nez v9, :cond_f

    .line 216
    .line 217
    const/4 v5, 0x0

    .line 218
    goto :goto_5

    .line 219
    :cond_f
    add-int/lit8 v5, v9, -0x1

    .line 220
    .line 221
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    check-cast v5, Ljava/lang/Number;

    .line 226
    .line 227
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 228
    .line 229
    .line 230
    move-result v5

    .line 231
    :goto_5
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 232
    .line 233
    .line 234
    move-result-object v18

    .line 235
    check-cast v18, Ljava/lang/Number;

    .line 236
    .line 237
    invoke-virtual/range {v18 .. v18}, Ljava/lang/Number;->intValue()I

    .line 238
    .line 239
    .line 240
    move-result v11

    .line 241
    sub-int v4, v11, v5

    .line 242
    .line 243
    move-object/from16 v25, v15

    .line 244
    .line 245
    iget-object v15, v0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 246
    .line 247
    check-cast v15, [C

    .line 248
    .line 249
    move/from16 v26, v8

    .line 250
    .line 251
    if-eqz v15, :cond_10

    .line 252
    .line 253
    array-length v8, v15

    .line 254
    if-ge v8, v4, :cond_11

    .line 255
    .line 256
    :cond_10
    new-array v15, v4, [C

    .line 257
    .line 258
    :cond_11
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 259
    .line 260
    .line 261
    move-result-object v8

    .line 262
    move/from16 v27, v6

    .line 263
    .line 264
    const/4 v6, 0x0

    .line 265
    invoke-static {v8, v5, v11, v15, v6}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 266
    .line 267
    .line 268
    invoke-static {v15, v6, v4}, Ljava/text/Bidi;->requiresBidi([CII)Z

    .line 269
    .line 270
    .line 271
    move-result v5

    .line 272
    if-eqz v5, :cond_15

    .line 273
    .line 274
    if-nez v9, :cond_12

    .line 275
    .line 276
    const/4 v6, 0x0

    .line 277
    goto :goto_6

    .line 278
    :cond_12
    add-int/lit8 v5, v9, -0x1

    .line 279
    .line 280
    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 281
    .line 282
    .line 283
    move-result-object v2

    .line 284
    check-cast v2, Ljava/lang/Number;

    .line 285
    .line 286
    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    .line 287
    .line 288
    .line 289
    move-result v6

    .line 290
    :goto_6
    invoke-virtual {v3, v6}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 291
    .line 292
    .line 293
    move-result v2

    .line 294
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 295
    .line 296
    .line 297
    move-result v2

    .line 298
    const/4 v5, -0x1

    .line 299
    if-ne v2, v5, :cond_13

    .line 300
    .line 301
    const/16 v24, 0x1

    .line 302
    .line 303
    goto :goto_7

    .line 304
    :cond_13
    const/16 v24, 0x0

    .line 305
    .line 306
    :goto_7
    new-instance v18, Ljava/text/Bidi;

    .line 307
    .line 308
    const/16 v21, 0x0

    .line 309
    .line 310
    const/16 v22, 0x0

    .line 311
    .line 312
    const/16 v20, 0x0

    .line 313
    .line 314
    move/from16 v23, v4

    .line 315
    .line 316
    move-object/from16 v19, v15

    .line 317
    .line 318
    invoke-direct/range {v18 .. v24}, Ljava/text/Bidi;-><init>([CI[BIII)V

    .line 319
    .line 320
    .line 321
    invoke-virtual/range {v18 .. v18}, Ljava/text/Bidi;->getRunCount()I

    .line 322
    .line 323
    .line 324
    move-result v2

    .line 325
    const/4 v4, 0x1

    .line 326
    if-ne v2, v4, :cond_14

    .line 327
    .line 328
    :goto_8
    move-object/from16 v2, v17

    .line 329
    .line 330
    goto :goto_9

    .line 331
    :cond_14
    move-object/from16 v2, v18

    .line 332
    .line 333
    goto :goto_9

    .line 334
    :cond_15
    const/4 v4, 0x1

    .line 335
    const/4 v5, -0x1

    .line 336
    goto :goto_8

    .line 337
    :goto_9
    invoke-virtual {v14, v9, v2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 338
    .line 339
    .line 340
    aput-boolean v4, v25, v9

    .line 341
    .line 342
    if-eqz v2, :cond_17

    .line 343
    .line 344
    iget-object v4, v0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 345
    .line 346
    check-cast v4, [C

    .line 347
    .line 348
    if-ne v15, v4, :cond_16

    .line 349
    .line 350
    move-object/from16 v15, v17

    .line 351
    .line 352
    goto :goto_a

    .line 353
    :cond_16
    move-object v15, v4

    .line 354
    :cond_17
    :goto_a
    iput-object v15, v0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 355
    .line 356
    :goto_b
    if-eqz v2, :cond_18

    .line 357
    .line 358
    invoke-virtual {v2, v13, v12}, Ljava/text/Bidi;->createLineBidi(II)Ljava/text/Bidi;

    .line 359
    .line 360
    .line 361
    move-result-object v17

    .line 362
    :cond_18
    move-object/from16 v2, v17

    .line 363
    .line 364
    if-eqz v2, :cond_2f

    .line 365
    .line 366
    invoke-virtual {v2}, Ljava/text/Bidi;->getRunCount()I

    .line 367
    .line 368
    .line 369
    move-result v4

    .line 370
    const/4 v6, 0x1

    .line 371
    if-ne v4, v6, :cond_19

    .line 372
    .line 373
    move/from16 v16, v6

    .line 374
    .line 375
    :goto_c
    move/from16 v2, v27

    .line 376
    .line 377
    const/4 v11, 0x0

    .line 378
    goto/16 :goto_17

    .line 379
    .line 380
    :cond_19
    invoke-virtual {v2}, Ljava/text/Bidi;->getRunCount()I

    .line 381
    .line 382
    .line 383
    move-result v4

    .line 384
    new-array v6, v4, [Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;

    .line 385
    .line 386
    const/4 v8, 0x0

    .line 387
    :goto_d
    if-ge v8, v4, :cond_1b

    .line 388
    .line 389
    new-instance v9, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;

    .line 390
    .line 391
    invoke-virtual {v2, v8}, Ljava/text/Bidi;->getRunStart(I)I

    .line 392
    .line 393
    .line 394
    move-result v11

    .line 395
    add-int/2addr v11, v7

    .line 396
    invoke-virtual {v2, v8}, Ljava/text/Bidi;->getRunLimit(I)I

    .line 397
    .line 398
    .line 399
    move-result v12

    .line 400
    add-int/2addr v12, v7

    .line 401
    invoke-virtual {v2, v8}, Ljava/text/Bidi;->getRunLevel(I)I

    .line 402
    .line 403
    .line 404
    move-result v13

    .line 405
    rem-int/lit8 v13, v13, 0x2

    .line 406
    .line 407
    const/4 v14, 0x1

    .line 408
    if-ne v13, v14, :cond_1a

    .line 409
    .line 410
    const/4 v13, 0x1

    .line 411
    goto :goto_e

    .line 412
    :cond_1a
    const/4 v13, 0x0

    .line 413
    :goto_e
    invoke-direct {v9, v11, v12, v13}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;-><init>(IIZ)V

    .line 414
    .line 415
    .line 416
    aput-object v9, v6, v8

    .line 417
    .line 418
    add-int/lit8 v8, v8, 0x1

    .line 419
    .line 420
    goto :goto_d

    .line 421
    :cond_1b
    invoke-virtual {v2}, Ljava/text/Bidi;->getRunCount()I

    .line 422
    .line 423
    .line 424
    move-result v8

    .line 425
    new-array v9, v8, [B

    .line 426
    .line 427
    const/4 v11, 0x0

    .line 428
    :goto_f
    if-ge v11, v8, :cond_1c

    .line 429
    .line 430
    invoke-virtual {v2, v11}, Ljava/text/Bidi;->getRunLevel(I)I

    .line 431
    .line 432
    .line 433
    move-result v12

    .line 434
    int-to-byte v12, v12

    .line 435
    aput-byte v12, v9, v11

    .line 436
    .line 437
    add-int/lit8 v11, v11, 0x1

    .line 438
    .line 439
    goto :goto_f

    .line 440
    :cond_1c
    const/4 v11, 0x0

    .line 441
    invoke-static {v9, v11, v6, v11, v4}, Ljava/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    .line 442
    .line 443
    .line 444
    if-ne v1, v7, :cond_25

    .line 445
    .line 446
    move v0, v11

    .line 447
    :goto_10
    if-ge v0, v4, :cond_1e

    .line 448
    .line 449
    aget-object v2, v6, v0

    .line 450
    .line 451
    iget v2, v2, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->start:I

    .line 452
    .line 453
    if-ne v2, v1, :cond_1d

    .line 454
    .line 455
    goto :goto_11

    .line 456
    :cond_1d
    add-int/lit8 v0, v0, 0x1

    .line 457
    .line 458
    goto :goto_10

    .line 459
    :cond_1e
    move v0, v5

    .line 460
    :goto_11
    aget-object v1, v6, v0

    .line 461
    .line 462
    if-nez p2, :cond_1f

    .line 463
    .line 464
    iget-boolean v1, v1, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->isRtl:Z

    .line 465
    .line 466
    if-ne v10, v1, :cond_21

    .line 467
    .line 468
    :cond_1f
    if-nez v10, :cond_20

    .line 469
    .line 470
    const/4 v10, 0x1

    .line 471
    goto :goto_12

    .line 472
    :cond_20
    move v10, v11

    .line 473
    :cond_21
    :goto_12
    if-nez v0, :cond_22

    .line 474
    .line 475
    if-eqz v10, :cond_22

    .line 476
    .line 477
    move/from16 v2, v27

    .line 478
    .line 479
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineLeft(I)F

    .line 480
    .line 481
    .line 482
    move-result v0

    .line 483
    return v0

    .line 484
    :cond_22
    move/from16 v2, v27

    .line 485
    .line 486
    const/16 v16, 0x1

    .line 487
    .line 488
    add-int/lit8 v4, v4, -0x1

    .line 489
    .line 490
    if-ne v0, v4, :cond_23

    .line 491
    .line 492
    if-nez v10, :cond_23

    .line 493
    .line 494
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineRight(I)F

    .line 495
    .line 496
    .line 497
    move-result v0

    .line 498
    return v0

    .line 499
    :cond_23
    if-eqz v10, :cond_24

    .line 500
    .line 501
    add-int/lit8 v0, v0, -0x1

    .line 502
    .line 503
    aget-object v0, v6, v0

    .line 504
    .line 505
    iget v0, v0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->start:I

    .line 506
    .line 507
    invoke-virtual {v3, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 508
    .line 509
    .line 510
    move-result v0

    .line 511
    return v0

    .line 512
    :cond_24
    add-int/lit8 v0, v0, 0x1

    .line 513
    .line 514
    aget-object v0, v6, v0

    .line 515
    .line 516
    iget v0, v0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->start:I

    .line 517
    .line 518
    invoke-virtual {v3, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 519
    .line 520
    .line 521
    move-result v0

    .line 522
    return v0

    .line 523
    :cond_25
    move/from16 v8, v26

    .line 524
    .line 525
    move/from16 v2, v27

    .line 526
    .line 527
    if-le v1, v8, :cond_26

    .line 528
    .line 529
    invoke-virtual {v0, v1, v7}, Lcoil3/ComponentRegistry$Builder;->lineEndToVisibleEnd(II)I

    .line 530
    .line 531
    .line 532
    move-result v0

    .line 533
    goto :goto_13

    .line 534
    :cond_26
    move v0, v1

    .line 535
    :goto_13
    move v1, v11

    .line 536
    :goto_14
    if-ge v1, v4, :cond_28

    .line 537
    .line 538
    aget-object v7, v6, v1

    .line 539
    .line 540
    iget v7, v7, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->end:I

    .line 541
    .line 542
    if-ne v7, v0, :cond_27

    .line 543
    .line 544
    goto :goto_15

    .line 545
    :cond_27
    add-int/lit8 v1, v1, 0x1

    .line 546
    .line 547
    goto :goto_14

    .line 548
    :cond_28
    move v1, v5

    .line 549
    :goto_15
    aget-object v0, v6, v1

    .line 550
    .line 551
    if-nez p2, :cond_2b

    .line 552
    .line 553
    iget-boolean v0, v0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->isRtl:Z

    .line 554
    .line 555
    if-ne v10, v0, :cond_29

    .line 556
    .line 557
    goto :goto_16

    .line 558
    :cond_29
    if-nez v10, :cond_2a

    .line 559
    .line 560
    const/4 v10, 0x1

    .line 561
    goto :goto_16

    .line 562
    :cond_2a
    move v10, v11

    .line 563
    :cond_2b
    :goto_16
    if-nez v1, :cond_2c

    .line 564
    .line 565
    if-eqz v10, :cond_2c

    .line 566
    .line 567
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineLeft(I)F

    .line 568
    .line 569
    .line 570
    move-result v0

    .line 571
    return v0

    .line 572
    :cond_2c
    const/16 v16, 0x1

    .line 573
    .line 574
    add-int/lit8 v4, v4, -0x1

    .line 575
    .line 576
    if-ne v1, v4, :cond_2d

    .line 577
    .line 578
    if-nez v10, :cond_2d

    .line 579
    .line 580
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineRight(I)F

    .line 581
    .line 582
    .line 583
    move-result v0

    .line 584
    return v0

    .line 585
    :cond_2d
    if-eqz v10, :cond_2e

    .line 586
    .line 587
    add-int/lit8 v1, v1, -0x1

    .line 588
    .line 589
    aget-object v0, v6, v1

    .line 590
    .line 591
    iget v0, v0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->end:I

    .line 592
    .line 593
    invoke-virtual {v3, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 594
    .line 595
    .line 596
    move-result v0

    .line 597
    return v0

    .line 598
    :cond_2e
    add-int/lit8 v1, v1, 0x1

    .line 599
    .line 600
    aget-object v0, v6, v1

    .line 601
    .line 602
    iget v0, v0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->end:I

    .line 603
    .line 604
    invoke-virtual {v3, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 605
    .line 606
    .line 607
    move-result v0

    .line 608
    return v0

    .line 609
    :cond_2f
    const/16 v16, 0x1

    .line 610
    .line 611
    goto/16 :goto_c

    .line 612
    .line 613
    :goto_17
    invoke-virtual {v3, v7}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 614
    .line 615
    .line 616
    move-result v0

    .line 617
    if-nez p2, :cond_30

    .line 618
    .line 619
    if-ne v10, v0, :cond_32

    .line 620
    .line 621
    :cond_30
    if-nez v10, :cond_31

    .line 622
    .line 623
    move/from16 v10, v16

    .line 624
    .line 625
    goto :goto_18

    .line 626
    :cond_31
    move v10, v11

    .line 627
    :cond_32
    :goto_18
    if-ne v1, v7, :cond_33

    .line 628
    .line 629
    move v4, v10

    .line 630
    goto :goto_19

    .line 631
    :cond_33
    if-nez v10, :cond_34

    .line 632
    .line 633
    move/from16 v4, v16

    .line 634
    .line 635
    goto :goto_19

    .line 636
    :cond_34
    move v4, v11

    .line 637
    :goto_19
    if-eqz v4, :cond_35

    .line 638
    .line 639
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineLeft(I)F

    .line 640
    .line 641
    .line 642
    move-result v0

    .line 643
    return v0

    .line 644
    :cond_35
    invoke-virtual {v3, v2}, Landroid/text/Layout;->getLineRight(I)F

    .line 645
    .line 646
    .line 647
    move-result v0

    .line 648
    return v0

    .line 649
    :cond_36
    :goto_1a
    invoke-virtual/range {p0 .. p2}, Lcoil3/ComponentRegistry$Builder;->getDownstreamHorizontal(IZ)F

    .line 650
    .line 651
    .line 652
    move-result v0

    .line 653
    return v0
.end method

.method public getMaxIntrinsicWidth()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lkotlin/Lazy;

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public getMinIntrinsicWidth()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lkotlin/Lazy;

    .line 4
    .line 5
    invoke-interface {p0}, Lkotlin/Lazy;->getValue()Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    check-cast p0, Ljava/lang/Number;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Number;->floatValue()F

    .line 12
    .line 13
    .line 14
    move-result p0

    .line 15
    return p0
.end method

.method public getRoot()Landroid/view/View;
    .locals 1

    .line 1
    iget v0, p0, Lcoil3/ComponentRegistry$Builder;->$r8$classId:I

    .line 2
    .line 3
    packed-switch v0, :pswitch_data_0

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroid/widget/RelativeLayout;

    .line 9
    .line 10
    return-object p0

    .line 11
    :pswitch_0
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast p0, Landroid/widget/RelativeLayout;

    .line 14
    .line 15
    return-object p0

    .line 16
    nop

    .line 17
    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method

.method public getTabs()Ljava/util/List;
    .locals 3

    .line 1
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/SharedPreferences;

    .line 4
    .line 5
    iget-object v1, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/lang/String;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    :try_start_0
    invoke-static {v0}, Lorg/schabi/newpipe/settings/tabs/TabsJsonHelper;->getTabsFromJson(Ljava/lang/String;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object p0
    :try_end_0
    .catch Lorg/schabi/newpipe/settings/tabs/TabsJsonHelper$InvalidJsonException; {:try_start_0 .. :try_end_0} :catch_0

    .line 18
    return-object p0

    .line 19
    :catch_0
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast p0, Landroid/content/Context;

    .line 22
    .line 23
    const v0, 0x7f130435

    .line 24
    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-static {p0, v0, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    invoke-virtual {p0}, Landroid/widget/Toast;->show()V

    .line 32
    .line 33
    .line 34
    sget-object p0, Lorg/schabi/newpipe/settings/tabs/TabsJsonHelper;->FALLBACK_INITIAL_TABS_LIST:Ljava/util/List;

    .line 35
    .line 36
    return-object p0
.end method

.method public lineEndToVisibleEnd(II)I
    .locals 2

    .line 1
    :goto_0
    if-le p1, p2, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v0, Landroid/text/Layout;

    .line 6
    .line 7
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 8
    .line 9
    .line 10
    move-result-object v0

    .line 11
    add-int/lit8 v1, p1, -0x1

    .line 12
    .line 13
    invoke-interface {v0, v1}, Ljava/lang/CharSequence;->charAt(I)C

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    const/16 v1, 0x20

    .line 18
    .line 19
    if-eq v0, v1, :cond_2

    .line 20
    .line 21
    const/16 v1, 0xa

    .line 22
    .line 23
    if-eq v0, v1, :cond_2

    .line 24
    .line 25
    const/16 v1, 0x1680

    .line 26
    .line 27
    if-eq v0, v1, :cond_2

    .line 28
    .line 29
    const/16 v1, 0x2000

    .line 30
    .line 31
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 32
    .line 33
    .line 34
    move-result v1

    .line 35
    if-ltz v1, :cond_0

    .line 36
    .line 37
    const/16 v1, 0x200a

    .line 38
    .line 39
    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->compare(II)I

    .line 40
    .line 41
    .line 42
    move-result v1

    .line 43
    if-gtz v1, :cond_0

    .line 44
    .line 45
    const/16 v1, 0x2007

    .line 46
    .line 47
    if-ne v0, v1, :cond_2

    .line 48
    .line 49
    :cond_0
    const/16 v1, 0x205f

    .line 50
    .line 51
    if-eq v0, v1, :cond_2

    .line 52
    .line 53
    const/16 v1, 0x3000

    .line 54
    .line 55
    if-ne v0, v1, :cond_1

    .line 56
    .line 57
    goto :goto_1

    .line 58
    :cond_1
    return p1

    .line 59
    :cond_2
    :goto_1
    add-int/lit8 p1, p1, -0x1

    .line 60
    .line 61
    goto :goto_0

    .line 62
    :cond_3
    return p1
.end method

.method public onCreate()V
    .locals 2

    .line 1
    new-instance v0, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$MediaBrowserServiceApi23;

    .line 2
    .line 3
    iget-object v1, p0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Landroidx/media/MediaBrowserServiceCompat;

    .line 6
    .line 7
    invoke-direct {v0, p0, v1}, Landroidx/media/MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$MediaBrowserServiceApi23;-><init>(Lcoil3/ComponentRegistry$Builder;Landroid/content/Context;)V

    .line 8
    .line 9
    .line 10
    iput-object v0, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 11
    .line 12
    invoke-virtual {v0}, Landroid/service/media/MediaBrowserService;->onCreate()V

    .line 13
    .line 14
    .line 15
    return-void
.end method

.method public polymorphic(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/internal/ClassReference;Lkotlinx/serialization/KSerializer;)V
    .locals 5

    .line 1
    invoke-interface {p3}, Lkotlinx/serialization/KSerializer;->getDescriptor()Lkotlinx/serialization/descriptors/SerialDescriptor;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    invoke-interface {v0}, Lkotlinx/serialization/descriptors/SerialDescriptor;->getSerialName()Ljava/lang/String;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object v1, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v1, Ljava/util/HashMap;

    .line 12
    .line 13
    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    .line 15
    .line 16
    move-result-object v2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    new-instance v2, Ljava/util/HashMap;

    .line 20
    .line 21
    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 22
    .line 23
    .line 24
    invoke-virtual {v1, p1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    :cond_0
    check-cast v2, Ljava/util/Map;

    .line 28
    .line 29
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast p0, Ljava/util/HashMap;

    .line 32
    .line 33
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 34
    .line 35
    .line 36
    move-result-object v1

    .line 37
    if-nez v1, :cond_1

    .line 38
    .line 39
    new-instance v1, Ljava/util/HashMap;

    .line 40
    .line 41
    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 42
    .line 43
    .line 44
    invoke-virtual {p0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    :cond_1
    check-cast v1, Ljava/util/Map;

    .line 48
    .line 49
    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    check-cast p0, Lkotlinx/serialization/KSerializer;

    .line 54
    .line 55
    if-eqz p0, :cond_3

    .line 56
    .line 57
    invoke-virtual {p0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 58
    .line 59
    .line 60
    move-result p0

    .line 61
    if-eqz p0, :cond_2

    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    new-instance p0, Lkotlin/time/InstantFormatException;

    .line 65
    .line 66
    new-instance p3, Ljava/lang/StringBuilder;

    .line 67
    .line 68
    const-string v0, "Serializer for "

    .line 69
    .line 70
    invoke-direct {p3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 74
    .line 75
    .line 76
    const-string p2, " already registered in the scope of "

    .line 77
    .line 78
    invoke-virtual {p3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 79
    .line 80
    .line 81
    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    .line 83
    .line 84
    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 85
    .line 86
    .line 87
    move-result-object p1

    .line 88
    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 89
    .line 90
    .line 91
    throw p0

    .line 92
    :cond_3
    :goto_0
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    check-cast p0, Lkotlinx/serialization/KSerializer;

    .line 97
    .line 98
    if-eqz p0, :cond_7

    .line 99
    .line 100
    invoke-virtual {p0, p3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v3

    .line 104
    if-nez v3, :cond_7

    .line 105
    .line 106
    invoke-interface {v2}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    .line 107
    .line 108
    .line 109
    move-result-object v1

    .line 110
    check-cast v1, Ljava/lang/Iterable;

    .line 111
    .line 112
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 113
    .line 114
    .line 115
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    .line 116
    .line 117
    .line 118
    move-result-object v1

    .line 119
    :cond_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 120
    .line 121
    .line 122
    move-result v2

    .line 123
    if-eqz v2, :cond_5

    .line 124
    .line 125
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 126
    .line 127
    .line 128
    move-result-object v2

    .line 129
    move-object v3, v2

    .line 130
    check-cast v3, Ljava/util/Map$Entry;

    .line 131
    .line 132
    invoke-interface {v3}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 133
    .line 134
    .line 135
    move-result-object v3

    .line 136
    if-ne v3, p0, :cond_4

    .line 137
    .line 138
    goto :goto_1

    .line 139
    :cond_5
    const/4 v2, 0x0

    .line 140
    :goto_1
    check-cast v2, Ljava/util/Map$Entry;

    .line 141
    .line 142
    if-eqz v2, :cond_6

    .line 143
    .line 144
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 145
    .line 146
    .line 147
    move-result-object v1

    .line 148
    check-cast v1, Lkotlin/jvm/internal/ClassReference;

    .line 149
    .line 150
    if-eqz v1, :cond_6

    .line 151
    .line 152
    new-instance v2, Ljava/lang/IllegalArgumentException;

    .line 153
    .line 154
    new-instance v3, Ljava/lang/StringBuilder;

    .line 155
    .line 156
    const-string v4, "Multiple polymorphic serializers in a scope of \'"

    .line 157
    .line 158
    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 159
    .line 160
    .line 161
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 162
    .line 163
    .line 164
    const-string p1, "\' have the same serial name \'"

    .line 165
    .line 166
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 167
    .line 168
    .line 169
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 170
    .line 171
    .line 172
    const-string p1, "\': "

    .line 173
    .line 174
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 175
    .line 176
    .line 177
    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 178
    .line 179
    .line 180
    const-string p1, " for \'"

    .line 181
    .line 182
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 183
    .line 184
    .line 185
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 186
    .line 187
    .line 188
    const-string p2, "\' and "

    .line 189
    .line 190
    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 191
    .line 192
    .line 193
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 194
    .line 195
    .line 196
    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 197
    .line 198
    .line 199
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 200
    .line 201
    .line 202
    const/16 p0, 0x27

    .line 203
    .line 204
    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 205
    .line 206
    .line 207
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 208
    .line 209
    .line 210
    move-result-object p0

    .line 211
    invoke-direct {v2, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    .line 212
    .line 213
    .line 214
    throw v2

    .line 215
    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 216
    .line 217
    new-instance p1, Ljava/lang/StringBuilder;

    .line 218
    .line 219
    const-string p2, "Name "

    .line 220
    .line 221
    invoke-direct {p1, p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    .line 226
    .line 227
    const-string p2, " is registered in the module but no Kotlin class is associated with it."

    .line 228
    .line 229
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 230
    .line 231
    .line 232
    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 233
    .line 234
    .line 235
    move-result-object p1

    .line 236
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 237
    .line 238
    .line 239
    move-result-object p1

    .line 240
    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 241
    .line 242
    .line 243
    throw p0

    .line 244
    :cond_7
    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    .line 246
    .line 247
    invoke-interface {v1, v0, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    .line 249
    .line 250
    return-void
.end method

.method public polymorphicDefaultDeserializer(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->lazyDecoderFactories:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p0, "Default deserializers provider for "

    .line 21
    .line 22
    const-string p2, " is already registered: "

    .line 23
    .line 24
    invoke-static {p0, p1, p2, v0}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public polymorphicDefaultSerializer(Lkotlin/jvm/internal/ClassReference;Lkotlin/jvm/functions/Function1;)V
    .locals 2

    .line 1
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/HashMap;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    check-cast v0, Lkotlin/jvm/functions/Function1;

    .line 10
    .line 11
    if-eqz v0, :cond_1

    .line 12
    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    .line 14
    .line 15
    .line 16
    move-result v1

    .line 17
    if-eqz v1, :cond_0

    .line 18
    .line 19
    goto :goto_0

    .line 20
    :cond_0
    const-string p0, "Default serializers provider for "

    .line 21
    .line 22
    const-string p2, " is already registered: "

    .line 23
    .line 24
    invoke-static {p0, p1, p2, v0}, Lcoil3/decode/DecodeUtils$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    return-void

    .line 28
    :cond_1
    :goto_0
    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 29
    .line 30
    .line 31
    return-void
.end method

.method public saveTabs(Ljava/util/List;)V
    .locals 4

    .line 1
    sget-object v0, Lorg/schabi/newpipe/settings/tabs/TabsJsonHelper;->FALLBACK_INITIAL_TABS_LIST:Ljava/util/List;

    .line 2
    .line 3
    new-instance v0, Lcom/grack/nanojson/JsonStringWriter;

    .line 4
    .line 5
    invoke-direct {v0}, Lcom/grack/nanojson/JsonStringWriter;-><init>()V

    .line 6
    .line 7
    .line 8
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->object()V

    .line 9
    .line 10
    .line 11
    const-string/jumbo v1, "tabs"

    .line 12
    .line 13
    .line 14
    invoke-virtual {v0, v1}, Lcom/grack/nanojson/JsonStringWriter;->array(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    if-eqz p1, :cond_0

    .line 18
    .line 19
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 20
    .line 21
    .line 22
    move-result-object p1

    .line 23
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    .line 24
    .line 25
    .line 26
    move-result v1

    .line 27
    if-eqz v1, :cond_0

    .line 28
    .line 29
    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 30
    .line 31
    .line 32
    move-result-object v1

    .line 33
    check-cast v1, Lorg/schabi/newpipe/settings/tabs/Tab;

    .line 34
    .line 35
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 36
    .line 37
    .line 38
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->object()V

    .line 39
    .line 40
    .line 41
    const-string/jumbo v2, "tab_id"

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Lorg/schabi/newpipe/settings/tabs/Tab;->getTabId()I

    .line 45
    .line 46
    .line 47
    move-result v3

    .line 48
    invoke-virtual {v0, v3, v2}, Lcom/grack/nanojson/JsonStringWriter;->value(ILjava/lang/String;)V

    .line 49
    .line 50
    .line 51
    invoke-virtual {v1, v0}, Lorg/schabi/newpipe/settings/tabs/Tab;->writeDataToJson(Lcom/grack/nanojson/JsonStringWriter;)V

    .line 52
    .line 53
    .line 54
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()V

    .line 55
    .line 56
    .line 57
    goto :goto_0

    .line 58
    :cond_0
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->end()V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v0}, Lcom/grack/nanojson/JsonStringWriter;->done()Ljava/lang/String;

    .line 65
    .line 66
    .line 67
    move-result-object p1

    .line 68
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 69
    .line 70
    check-cast v0, Landroid/content/SharedPreferences;

    .line 71
    .line 72
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    .line 73
    .line 74
    .line 75
    move-result-object v0

    .line 76
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->mappers:Ljava/lang/Object;

    .line 77
    .line 78
    check-cast p0, Ljava/lang/String;

    .line 79
    .line 80
    invoke-interface {v0, p0, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 81
    .line 82
    .line 83
    move-result-object p0

    .line 84
    invoke-interface {p0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 85
    .line 86
    .line 87
    return-void
.end method

.method public set(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->interceptors:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcoil3/ComponentRegistry$Builder;->keyers:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 14
    .line 15
    invoke-virtual {v0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    check-cast v0, Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 20
    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    check-cast v0, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 24
    .line 25
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 26
    .line 27
    .line 28
    :cond_0
    iget-object p0, p0, Lcoil3/ComponentRegistry$Builder;->lazyFetcherFactories:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p0, Ljava/util/LinkedHashMap;

    .line 31
    .line 32
    invoke-virtual {p0, p2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    move-result-object p0

    .line 36
    check-cast p0, Lkotlinx/coroutines/flow/MutableStateFlow;

    .line 37
    .line 38
    if-eqz p0, :cond_1

    .line 39
    .line 40
    check-cast p0, Lkotlinx/coroutines/flow/StateFlowImpl;

    .line 41
    .line 42
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/flow/StateFlowImpl;->setValue(Ljava/lang/Object;)V

    .line 43
    .line 44
    .line 45
    :cond_1
    return-void
.end method
