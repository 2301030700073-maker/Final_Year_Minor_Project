.class public final Lcom/fsck/k9/mailstore/LocalStore$7;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"

# interfaces
.implements Landroidx/compose/ui/text/ParagraphIntrinsics;
.implements Lapp/k9mail/legacy/mailstore/MessageMapper;
.implements Lcom/fsck/k9/backend/api/Backend;
.implements Lcom/fsck/k9/mailstore/LockableDatabase$DbCallback;


# instance fields
.field public final synthetic $r8$classId:I

.field public this$0:Ljava/lang/Object;

.field public val$folder:Ljava/lang/Object;

.field public val$messages:Ljava/lang/Object;

.field public val$placeHolders:Ljava/lang/Object;

.field public val$queryString:Ljava/lang/Object;


# direct methods
.method public static -$$Nest$mwriteAttachment(Lcom/fsck/k9/mailstore/LocalStore$7;Landroid/net/Uri;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/content/Context;

    .line 4
    .line 5
    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 12
    .line 13
    iget-object p0, p0, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->internalUri:Landroid/net/Uri;

    .line 14
    .line 15
    invoke-virtual {v0, p0}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    .line 16
    .line 17
    .line 18
    move-result-object p0

    .line 19
    :try_start_0
    const-string/jumbo v1, "wt"

    .line 20
    .line 21
    .line 22
    invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;Ljava/lang/String;)Ljava/io/OutputStream;

    .line 23
    .line 24
    .line 25
    move-result-object p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 26
    :try_start_1
    invoke-static {p0, p1}, Lorg/apache/commons/io/IOUtils;->copy(Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1}, Ljava/io/OutputStream;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 30
    .line 31
    .line 32
    :try_start_2
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 33
    .line 34
    .line 35
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 36
    .line 37
    .line 38
    return-void

    .line 39
    :catchall_0
    move-exception p1

    .line 40
    goto :goto_0

    .line 41
    :catchall_1
    move-exception v0

    .line 42
    :try_start_3
    invoke-virtual {p1}, Ljava/io/OutputStream;->close()V

    .line 43
    .line 44
    .line 45
    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 46
    :goto_0
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V

    .line 47
    .line 48
    .line 49
    throw p1
.end method

.method public constructor <init>(I)V
    .locals 1

    iput p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->$r8$classId:I

    packed-switch p1, :pswitch_data_0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void

    .line 695
    :pswitch_0
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 696
    new-instance p1, Ljava/lang/Object;

    invoke-direct {p1}, Ljava/lang/Object;-><init>()V

    .line 697
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 698
    new-instance p1, Landroidx/compose/runtime/internal/AtomicInt;

    const/4 v0, 0x0

    .line 699
    invoke-direct {p1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 700
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 701
    new-instance p1, Landroidx/collection/MutableObjectList;

    invoke-direct {p1}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 702
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 703
    new-instance p1, Landroidx/collection/MutableObjectList;

    invoke-direct {p1}, Landroidx/collection/MutableObjectList;-><init>()V

    .line 704
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    return-void

    :pswitch_data_0
    .packed-switch 0x5
        :pswitch_0
    .end packed-switch
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/ui/messageview/MessageViewFragment;Lcom/fsck/k9/mailstore/AttachmentViewInfo;)V
    .locals 1

    const/16 v0, 0x10

    iput v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->$r8$classId:I

    .line 731
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 732
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 733
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 734
    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 735
    iput-object p4, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 736
    new-instance p2, Landroidx/navigation/internal/NavContext;

    const/16 p3, 0xe

    invoke-direct {p2, p1, p3}, Landroidx/navigation/internal/NavContext;-><init>(Landroid/content/Context;I)V

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lokhttp3/Dispatcher;)V
    .locals 6

    const/16 v0, 0xa

    iput v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->$r8$classId:I

    .line 705
    new-instance v0, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    .line 706
    invoke-direct {v0, v1, p2, v2}, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;-><init>(Landroid/content/Context;Lokhttp3/Dispatcher;I)V

    .line 707
    new-instance v1, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x0

    .line 708
    invoke-direct {v1, v2, p2, v3}, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;-><init>(Landroid/content/Context;Lokhttp3/Dispatcher;I)V

    .line 709
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1c

    if-ge v2, v3, :cond_1

    .line 710
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    sget-object v4, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerKt;->TAG:Ljava/lang/String;

    const/16 v4, 0x18

    if-lt v2, v4, :cond_0

    .line 711
    new-instance v2, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre28;

    invoke-direct {v2, v3, p2}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre28;-><init>(Landroid/content/Context;Lokhttp3/Dispatcher;)V

    goto :goto_0

    .line 712
    :cond_0
    new-instance v2, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre24;

    invoke-direct {v2, v3, p2}, Landroidx/work/impl/constraints/trackers/NetworkStateTrackerPre24;-><init>(Landroid/content/Context;Lokhttp3/Dispatcher;)V

    goto :goto_0

    :cond_1
    const/4 v2, 0x0

    .line 713
    :goto_0
    new-instance v3, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x2

    .line 714
    invoke-direct {v3, v4, p2, v5}, Landroidx/work/impl/constraints/trackers/BatteryNotLowTracker;-><init>(Landroid/content/Context;Lokhttp3/Dispatcher;I)V

    .line 715
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 716
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 717
    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 718
    iput-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 719
    iput-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 720
    iput-object v3, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V
    .locals 1

    const/16 v0, 0x13

    iput v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->$r8$classId:I

    .line 770
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 771
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 772
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 773
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 774
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 775
    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 776
    iput-object p4, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 777
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroid/text/Layout;)V
    .locals 5

    const/4 v0, 0x7

    iput v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->$r8$classId:I

    .line 721
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 722
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x0

    move v1, v0

    .line 723
    :cond_0
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    check-cast v2, Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    const/16 v3, 0xa

    const/4 v4, 0x4

    invoke-static {v2, v3, v1, v4}, Lkotlin/text/StringsKt;->indexOf$default(Ljava/lang/CharSequence;CII)I

    move-result v1

    if-gez v1, :cond_1

    .line 724
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    check-cast v1, Landroid/text/Layout;

    invoke-virtual {v1}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    goto :goto_0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    .line 725
    :goto_0
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 726
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    check-cast v2, Landroid/text/Layout;

    invoke-virtual {v2}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt v1, v2, :cond_0

    .line 727
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 728
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(I)V

    :goto_1
    if-ge v0, p1, :cond_2

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_2
    iput-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 729
    iget-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    new-array p1, p1, [Z

    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 730
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    check-cast p0, Ljava/util/ArrayList;

    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const/16 v0, 0x11

    iput v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 788
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f0901d5

    .line 789
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    const v0, 0x7f0903c6

    .line 790
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    const v0, 0x7f09034e

    .line 791
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    const v0, 0x7f0903ff

    .line 792
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/google/android/material/textview/MaterialTextView;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    const v0, 0x7f0903b4

    .line 793
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/camera2/pipe/core/Threads;Landroidx/camera/camera2/pipe/CameraGraph$Config;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/compat/Camera2Quirks;Landroidx/camera/camera2/pipe/StrictMode;)V
    .locals 1

    const/4 v0, 0x1

    iput v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 752
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 753
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 754
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 755
    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 756
    iput-object p4, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 757
    iput-object p5, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceProcessorInternal;)V
    .locals 1

    const/4 v0, 0x4

    iput v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->$r8$classId:I

    .line 764
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 765
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 766
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 767
    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V
    .locals 30

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
    const/4 v3, 0x6

    .line 8
    iput v3, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->$r8$classId:I

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    iput-object v1, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 14
    .line 15
    move-object/from16 v3, p3

    .line 16
    .line 17
    iput-object v3, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 18
    .line 19
    new-instance v3, Landroidx/compose/ui/text/MultiParagraphIntrinsics$$ExternalSyntheticLambda0;

    .line 20
    .line 21
    const/4 v4, 0x0

    .line 22
    invoke-direct {v3, v0, v4}, Landroidx/compose/ui/text/MultiParagraphIntrinsics$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/mailstore/LocalStore$7;I)V

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
    iput-object v3, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 32
    .line 33
    new-instance v3, Landroidx/compose/ui/text/MultiParagraphIntrinsics$$ExternalSyntheticLambda0;

    .line 34
    .line 35
    const/4 v6, 0x1

    .line 36
    invoke-direct {v3, v0, v6}, Landroidx/compose/ui/text/MultiParagraphIntrinsics$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/mailstore/LocalStore$7;I)V

    .line 37
    .line 38
    .line 39
    invoke-static {v5, v3}, Lkotlin/ResultKt;->lazy(Lkotlin/LazyThreadSafetyMode;Lkotlin/jvm/functions/Function0;)Lkotlin/Lazy;

    .line 40
    .line 41
    .line 42
    move-result-object v3

    .line 43
    iput-object v3, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 44
    .line 45
    iget-object v3, v2, Landroidx/compose/ui/text/TextStyle;->paragraphStyle:Landroidx/compose/ui/text/ParagraphStyle;

    .line 46
    .line 47
    sget-object v5, Landroidx/compose/ui/text/AnnotatedStringKt;->EmptyAnnotatedString:Landroidx/compose/ui/text/AnnotatedString;

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
    if-ge v11, v10, :cond_9

    .line 85
    .line 86
    invoke-interface {v5, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v13

    .line 90
    check-cast v13, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 91
    .line 92
    iget-object v14, v13, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 93
    .line 94
    check-cast v14, Landroidx/compose/ui/text/ParagraphStyle;

    .line 95
    .line 96
    invoke-virtual {v3, v14}, Landroidx/compose/ui/text/ParagraphStyle;->merge(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    .line 97
    .line 98
    .line 99
    move-result-object v14

    .line 100
    const/16 v15, 0xe

    .line 101
    .line 102
    invoke-static {v13, v14, v4, v15}, Landroidx/compose/ui/text/AnnotatedString$Range;->copy$default(Landroidx/compose/ui/text/AnnotatedString$Range;Landroidx/compose/ui/text/AnnotatedString$Annotation;II)Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 103
    .line 104
    .line 105
    move-result-object v13

    .line 106
    iget-object v14, v13, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 107
    .line 108
    iget v15, v13, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 109
    .line 110
    iget v13, v13, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 111
    .line 112
    :goto_2
    if-ge v12, v13, :cond_3

    .line 113
    .line 114
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 115
    .line 116
    .line 117
    move-result v16

    .line 118
    if-nez v16, :cond_3

    .line 119
    .line 120
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object v16

    .line 124
    move-object/from16 v4, v16

    .line 125
    .line 126
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 127
    .line 128
    move-object/from16 v16, v5

    .line 129
    .line 130
    iget v5, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 131
    .line 132
    move-object/from16 v17, v8

    .line 133
    .line 134
    iget-object v8, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 135
    .line 136
    if-ge v13, v5, :cond_1

    .line 137
    .line 138
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 139
    .line 140
    invoke-direct {v4, v12, v13, v8}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 141
    .line 142
    .line 143
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 144
    .line 145
    .line 146
    move v12, v13

    .line 147
    move-object/from16 v5, v16

    .line 148
    .line 149
    move-object/from16 v8, v17

    .line 150
    .line 151
    :goto_3
    const/4 v4, 0x0

    .line 152
    goto :goto_2

    .line 153
    :cond_1
    move/from16 v18, v10

    .line 154
    .line 155
    new-instance v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 156
    .line 157
    invoke-direct {v10, v12, v5, v8}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 158
    .line 159
    .line 160
    invoke-virtual {v6, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 161
    .line 162
    .line 163
    iget v12, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 164
    .line 165
    :goto_4
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 166
    .line 167
    .line 168
    move-result v4

    .line 169
    if-nez v4, :cond_2

    .line 170
    .line 171
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 176
    .line 177
    iget v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 178
    .line 179
    if-ne v12, v4, :cond_2

    .line 180
    .line 181
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    goto :goto_4

    .line 185
    :cond_2
    move-object/from16 v5, v16

    .line 186
    .line 187
    move-object/from16 v8, v17

    .line 188
    .line 189
    move/from16 v10, v18

    .line 190
    .line 191
    goto :goto_3

    .line 192
    :cond_3
    move-object/from16 v16, v5

    .line 193
    .line 194
    move-object/from16 v17, v8

    .line 195
    .line 196
    move/from16 v18, v10

    .line 197
    .line 198
    if-ge v12, v13, :cond_4

    .line 199
    .line 200
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 201
    .line 202
    invoke-direct {v4, v12, v13, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 203
    .line 204
    .line 205
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 206
    .line 207
    .line 208
    move v12, v13

    .line 209
    :cond_4
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->lastOrNull()Ljava/lang/Object;

    .line 210
    .line 211
    .line 212
    move-result-object v4

    .line 213
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 214
    .line 215
    if-eqz v4, :cond_8

    .line 216
    .line 217
    iget v5, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 218
    .line 219
    iget-object v8, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 220
    .line 221
    iget v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 222
    .line 223
    if-ne v4, v13, :cond_5

    .line 224
    .line 225
    if-ne v5, v15, :cond_5

    .line 226
    .line 227
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 228
    .line 229
    .line 230
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 231
    .line 232
    check-cast v8, Landroidx/compose/ui/text/ParagraphStyle;

    .line 233
    .line 234
    check-cast v14, Landroidx/compose/ui/text/ParagraphStyle;

    .line 235
    .line 236
    invoke-virtual {v8, v14}, Landroidx/compose/ui/text/ParagraphStyle;->merge(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    .line 237
    .line 238
    .line 239
    move-result-object v5

    .line 240
    invoke-direct {v4, v13, v15, v5}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 241
    .line 242
    .line 243
    invoke-virtual {v9, v4}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 244
    .line 245
    .line 246
    goto :goto_5

    .line 247
    :cond_5
    if-ne v4, v5, :cond_6

    .line 248
    .line 249
    new-instance v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 250
    .line 251
    invoke-direct {v10, v4, v5, v8}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

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
    invoke-direct {v4, v13, v15, v14}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 263
    .line 264
    .line 265
    invoke-virtual {v9, v4}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 266
    .line 267
    .line 268
    goto :goto_5

    .line 269
    :cond_6
    if-lt v5, v15, :cond_7

    .line 270
    .line 271
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 272
    .line 273
    check-cast v8, Landroidx/compose/ui/text/ParagraphStyle;

    .line 274
    .line 275
    check-cast v14, Landroidx/compose/ui/text/ParagraphStyle;

    .line 276
    .line 277
    invoke-virtual {v8, v14}, Landroidx/compose/ui/text/ParagraphStyle;->merge(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    .line 278
    .line 279
    .line 280
    move-result-object v5

    .line 281
    invoke-direct {v4, v13, v15, v5}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 282
    .line 283
    .line 284
    invoke-virtual {v9, v4}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 285
    .line 286
    .line 287
    goto :goto_5

    .line 288
    :cond_7
    invoke-static {}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$1()V

    .line 289
    .line 290
    .line 291
    const/4 v0, 0x0

    .line 292
    throw v0

    .line 293
    :cond_8
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 294
    .line 295
    invoke-direct {v4, v13, v15, v14}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 296
    .line 297
    .line 298
    invoke-virtual {v9, v4}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 299
    .line 300
    .line 301
    :goto_5
    add-int/lit8 v11, v11, 0x1

    .line 302
    .line 303
    move-object/from16 v5, v16

    .line 304
    .line 305
    move-object/from16 v8, v17

    .line 306
    .line 307
    move/from16 v10, v18

    .line 308
    .line 309
    const/4 v4, 0x0

    .line 310
    goto/16 :goto_1

    .line 311
    .line 312
    :cond_9
    move-object/from16 v17, v8

    .line 313
    .line 314
    :goto_6
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 315
    .line 316
    .line 317
    move-result v4

    .line 318
    if-gt v12, v4, :cond_b

    .line 319
    .line 320
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 321
    .line 322
    .line 323
    move-result v4

    .line 324
    if-nez v4, :cond_b

    .line 325
    .line 326
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v4

    .line 330
    check-cast v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 331
    .line 332
    new-instance v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 333
    .line 334
    iget-object v8, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 335
    .line 336
    iget v4, v4, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 337
    .line 338
    invoke-direct {v5, v12, v4, v8}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 339
    .line 340
    .line 341
    invoke-virtual {v6, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 342
    .line 343
    .line 344
    :goto_7
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 345
    .line 346
    .line 347
    move-result v5

    .line 348
    if-nez v5, :cond_a

    .line 349
    .line 350
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->last()Ljava/lang/Object;

    .line 351
    .line 352
    .line 353
    move-result-object v5

    .line 354
    check-cast v5, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 355
    .line 356
    iget v5, v5, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 357
    .line 358
    if-ne v4, v5, :cond_a

    .line 359
    .line 360
    invoke-virtual {v9}, Lkotlin/collections/ArrayDeque;->removeLast()Ljava/lang/Object;

    .line 361
    .line 362
    .line 363
    goto :goto_7

    .line 364
    :cond_a
    move v12, v4

    .line 365
    goto :goto_6

    .line 366
    :cond_b
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 367
    .line 368
    .line 369
    move-result v4

    .line 370
    if-ge v12, v4, :cond_c

    .line 371
    .line 372
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 373
    .line 374
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    .line 375
    .line 376
    .line 377
    move-result v5

    .line 378
    invoke-direct {v4, v12, v5, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 379
    .line 380
    .line 381
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 382
    .line 383
    .line 384
    :cond_c
    invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z

    .line 385
    .line 386
    .line 387
    move-result v4

    .line 388
    if-eqz v4, :cond_d

    .line 389
    .line 390
    new-instance v4, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 391
    .line 392
    const/4 v5, 0x0

    .line 393
    invoke-direct {v4, v5, v5, v3}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 394
    .line 395
    .line 396
    invoke-virtual {v6, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 397
    .line 398
    .line 399
    goto :goto_8

    .line 400
    :cond_d
    const/4 v5, 0x0

    .line 401
    :goto_8
    new-instance v4, Ljava/util/ArrayList;

    .line 402
    .line 403
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 404
    .line 405
    .line 406
    move-result v8

    .line 407
    invoke-direct {v4, v8}, Ljava/util/ArrayList;-><init>(I)V

    .line 408
    .line 409
    .line 410
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    .line 411
    .line 412
    .line 413
    move-result v8

    .line 414
    move v9, v5

    .line 415
    :goto_9
    if-ge v9, v8, :cond_15

    .line 416
    .line 417
    invoke-virtual {v6, v9}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 418
    .line 419
    .line 420
    move-result-object v10

    .line 421
    check-cast v10, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 422
    .line 423
    iget v11, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 424
    .line 425
    iget v12, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 426
    .line 427
    new-instance v13, Landroidx/compose/ui/text/AnnotatedString;

    .line 428
    .line 429
    if-eq v11, v12, :cond_e

    .line 430
    .line 431
    invoke-virtual {v7, v11, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    .line 432
    .line 433
    .line 434
    move-result-object v14

    .line 435
    goto :goto_a

    .line 436
    :cond_e
    const-string v14, ""

    .line 437
    .line 438
    :goto_a
    new-instance v15, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;

    .line 439
    .line 440
    const/16 v5, 0x1a

    .line 441
    .line 442
    invoke-direct {v15, v5}, Landroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;-><init>(I)V

    .line 443
    .line 444
    .line 445
    invoke-static {v1, v11, v12, v15}, Landroidx/compose/ui/text/AnnotatedStringKt;->getLocalAnnotations(Landroidx/compose/ui/text/AnnotatedString;IILandroidx/compose/material3/TextKt$$ExternalSyntheticLambda1;)Ljava/util/List;

    .line 446
    .line 447
    .line 448
    move-result-object v5

    .line 449
    if-nez v5, :cond_f

    .line 450
    .line 451
    move-object/from16 v5, v17

    .line 452
    .line 453
    :cond_f
    invoke-direct {v13, v14, v5}, Landroidx/compose/ui/text/AnnotatedString;-><init>(Ljava/lang/String;Ljava/util/List;)V

    .line 454
    .line 455
    .line 456
    iget-object v5, v10, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 457
    .line 458
    check-cast v5, Landroidx/compose/ui/text/ParagraphStyle;

    .line 459
    .line 460
    iget v10, v5, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    .line 461
    .line 462
    if-nez v10, :cond_10

    .line 463
    .line 464
    iget v10, v3, Landroidx/compose/ui/text/ParagraphStyle;->textDirection:I

    .line 465
    .line 466
    iget v15, v5, Landroidx/compose/ui/text/ParagraphStyle;->textAlign:I

    .line 467
    .line 468
    move-object/from16 v29, v6

    .line 469
    .line 470
    move-object/from16 v16, v7

    .line 471
    .line 472
    iget-wide v6, v5, Landroidx/compose/ui/text/ParagraphStyle;->lineHeight:J

    .line 473
    .line 474
    iget-object v1, v5, Landroidx/compose/ui/text/ParagraphStyle;->textIndent:Landroidx/compose/ui/text/style/TextIndent;

    .line 475
    .line 476
    move-object/from16 v23, v1

    .line 477
    .line 478
    iget-object v1, v5, Landroidx/compose/ui/text/ParagraphStyle;->platformStyle:Landroidx/compose/ui/text/PlatformParagraphStyle;

    .line 479
    .line 480
    move-object/from16 v24, v1

    .line 481
    .line 482
    iget-object v1, v5, Landroidx/compose/ui/text/ParagraphStyle;->lineHeightStyle:Landroidx/compose/ui/text/style/LineHeightStyle;

    .line 483
    .line 484
    move-object/from16 v25, v1

    .line 485
    .line 486
    iget v1, v5, Landroidx/compose/ui/text/ParagraphStyle;->lineBreak:I

    .line 487
    .line 488
    move/from16 v26, v1

    .line 489
    .line 490
    iget v1, v5, Landroidx/compose/ui/text/ParagraphStyle;->hyphens:I

    .line 491
    .line 492
    iget-object v5, v5, Landroidx/compose/ui/text/ParagraphStyle;->textMotion:Landroidx/compose/ui/text/style/TextMotion;

    .line 493
    .line 494
    new-instance v18, Landroidx/compose/ui/text/ParagraphStyle;

    .line 495
    .line 496
    move/from16 v27, v1

    .line 497
    .line 498
    move-object/from16 v28, v5

    .line 499
    .line 500
    move-wide/from16 v21, v6

    .line 501
    .line 502
    move/from16 v20, v10

    .line 503
    .line 504
    move/from16 v19, v15

    .line 505
    .line 506
    invoke-direct/range {v18 .. v28}, Landroidx/compose/ui/text/ParagraphStyle;-><init>(IIJLandroidx/compose/ui/text/style/TextIndent;Landroidx/compose/ui/text/PlatformParagraphStyle;Landroidx/compose/ui/text/style/LineHeightStyle;IILandroidx/compose/ui/text/style/TextMotion;)V

    .line 507
    .line 508
    .line 509
    move-object/from16 v5, v18

    .line 510
    .line 511
    goto :goto_b

    .line 512
    :cond_10
    move-object/from16 v29, v6

    .line 513
    .line 514
    move-object/from16 v16, v7

    .line 515
    .line 516
    :goto_b
    new-instance v1, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;

    .line 517
    .line 518
    new-instance v6, Landroidx/compose/ui/text/TextStyle;

    .line 519
    .line 520
    iget-object v7, v2, Landroidx/compose/ui/text/TextStyle;->spanStyle:Landroidx/compose/ui/text/SpanStyle;

    .line 521
    .line 522
    invoke-virtual {v3, v5}, Landroidx/compose/ui/text/ParagraphStyle;->merge(Landroidx/compose/ui/text/ParagraphStyle;)Landroidx/compose/ui/text/ParagraphStyle;

    .line 523
    .line 524
    .line 525
    move-result-object v5

    .line 526
    invoke-direct {v6, v7, v5}, Landroidx/compose/ui/text/TextStyle;-><init>(Landroidx/compose/ui/text/SpanStyle;Landroidx/compose/ui/text/ParagraphStyle;)V

    .line 527
    .line 528
    .line 529
    iget-object v5, v13, Landroidx/compose/ui/text/AnnotatedString;->annotations:Ljava/util/List;

    .line 530
    .line 531
    if-nez v5, :cond_11

    .line 532
    .line 533
    move-object/from16 v21, v17

    .line 534
    .line 535
    goto :goto_c

    .line 536
    :cond_11
    move-object/from16 v21, v5

    .line 537
    .line 538
    :goto_c
    iget-object v5, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 539
    .line 540
    check-cast v5, Ljava/util/List;

    .line 541
    .line 542
    new-instance v7, Ljava/util/ArrayList;

    .line 543
    .line 544
    invoke-interface {v5}, Ljava/util/List;->size()I

    .line 545
    .line 546
    .line 547
    move-result v10

    .line 548
    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(I)V

    .line 549
    .line 550
    .line 551
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    .line 552
    .line 553
    .line 554
    move-result v10

    .line 555
    const/4 v13, 0x0

    .line 556
    :goto_d
    if-ge v13, v10, :cond_14

    .line 557
    .line 558
    invoke-interface {v5, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 559
    .line 560
    .line 561
    move-result-object v15

    .line 562
    check-cast v15, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 563
    .line 564
    iget v2, v15, Landroidx/compose/ui/text/AnnotatedString$Range;->start:I

    .line 565
    .line 566
    move-object/from16 v25, v3

    .line 567
    .line 568
    iget v3, v15, Landroidx/compose/ui/text/AnnotatedString$Range;->end:I

    .line 569
    .line 570
    invoke-static {v11, v12, v2, v3}, Landroidx/compose/ui/text/AnnotatedStringKt;->intersect(IIII)Z

    .line 571
    .line 572
    .line 573
    move-result v18

    .line 574
    if-eqz v18, :cond_13

    .line 575
    .line 576
    if-gt v11, v2, :cond_12

    .line 577
    .line 578
    if-gt v3, v12, :cond_12

    .line 579
    .line 580
    :goto_e
    move/from16 v18, v2

    .line 581
    .line 582
    goto :goto_f

    .line 583
    :cond_12
    const-string v18, "placeholder can not overlap with paragraph."

    .line 584
    .line 585
    invoke-static/range {v18 .. v18}, Landroidx/compose/ui/text/internal/InlineClassHelperKt;->throwIllegalArgumentException(Ljava/lang/String;)V

    .line 586
    .line 587
    .line 588
    goto :goto_e

    .line 589
    :goto_f
    new-instance v2, Landroidx/compose/ui/text/AnnotatedString$Range;

    .line 590
    .line 591
    iget-object v15, v15, Landroidx/compose/ui/text/AnnotatedString$Range;->item:Ljava/lang/Object;

    .line 592
    .line 593
    move/from16 v19, v3

    .line 594
    .line 595
    sub-int v3, v18, v11

    .line 596
    .line 597
    move-object/from16 v18, v5

    .line 598
    .line 599
    sub-int v5, v19, v11

    .line 600
    .line 601
    invoke-direct {v2, v3, v5, v15}, Landroidx/compose/ui/text/AnnotatedString$Range;-><init>(IILjava/lang/Object;)V

    .line 602
    .line 603
    .line 604
    invoke-virtual {v7, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 605
    .line 606
    .line 607
    goto :goto_10

    .line 608
    :cond_13
    move-object/from16 v18, v5

    .line 609
    .line 610
    :goto_10
    add-int/lit8 v13, v13, 0x1

    .line 611
    .line 612
    move-object/from16 v2, p2

    .line 613
    .line 614
    move-object/from16 v5, v18

    .line 615
    .line 616
    move-object/from16 v3, v25

    .line 617
    .line 618
    goto :goto_d

    .line 619
    :cond_14
    move-object/from16 v25, v3

    .line 620
    .line 621
    new-instance v18, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;

    .line 622
    .line 623
    move-object/from16 v24, p4

    .line 624
    .line 625
    move-object/from16 v23, p5

    .line 626
    .line 627
    move-object/from16 v20, v6

    .line 628
    .line 629
    move-object/from16 v22, v7

    .line 630
    .line 631
    move-object/from16 v19, v14

    .line 632
    .line 633
    invoke-direct/range {v18 .. v24}, Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;-><init>(Ljava/lang/String;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Ljava/util/List;Landroidx/compose/ui/text/font/FontFamily$Resolver;Landroidx/compose/ui/unit/Density;)V

    .line 634
    .line 635
    .line 636
    move-object/from16 v2, v18

    .line 637
    .line 638
    invoke-direct {v1, v2, v11, v12}, Landroidx/compose/ui/text/ParagraphIntrinsicInfo;-><init>(Landroidx/compose/ui/text/platform/AndroidParagraphIntrinsics;II)V

    .line 639
    .line 640
    .line 641
    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 642
    .line 643
    .line 644
    add-int/lit8 v9, v9, 0x1

    .line 645
    .line 646
    move-object/from16 v1, p1

    .line 647
    .line 648
    move-object/from16 v2, p2

    .line 649
    .line 650
    move-object/from16 v7, v16

    .line 651
    .line 652
    move-object/from16 v6, v29

    .line 653
    .line 654
    const/4 v5, 0x0

    .line 655
    goto/16 :goto_9

    .line 656
    .line 657
    :cond_15
    iput-object v4, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 658
    .line 659
    return-void
.end method

.method public constructor <init>(Landroidx/navigation/NavHostController;)V
    .locals 5

    const/16 v0, 0x9

    iput v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->$r8$classId:I

    .line 738
    iget-object v0, p1, Landroidx/navigation/NavHostController;->context:Landroid/content/Context;

    .line 739
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 740
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 741
    new-instance v1, Landroidx/navigation/internal/NavContext;

    const/4 v2, 0x0

    invoke-direct {v1, v0, v2}, Landroidx/navigation/internal/NavContext;-><init>(Landroid/content/Context;I)V

    iput-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 742
    new-instance v1, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/16 v2, 0xc

    invoke-direct {v1, v2}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    invoke-static {v0, v1}, Lkotlin/sequences/SequencesKt;->generateSequence(Ljava/lang/Object;Lkotlin/jvm/functions/Function1;)Lkotlin/sequences/Sequence;

    move-result-object v1

    new-instance v2, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 743
    new-instance v3, Lkotlin/sequences/TakeWhileSequence;

    const/4 v4, 0x2

    invoke-direct {v3, v1, v2, v4}, Lkotlin/sequences/TakeWhileSequence;-><init>(Lkotlin/sequences/Sequence;Lkotlin/jvm/functions/Function1;I)V

    invoke-static {v3}, Lkotlin/sequences/SequencesKt;->filterNotNull(Lkotlin/sequences/Sequence;)Lkotlin/sequences/FilteringSequence;

    move-result-object v1

    .line 744
    invoke-static {v1}, Lkotlin/sequences/SequencesKt;->firstOrNull(Lkotlin/sequences/FilteringSequence;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/Activity;

    if-eqz v1, :cond_0

    .line 745
    new-instance v2, Landroid/content/Intent;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-direct {v2, v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    goto :goto_0

    .line 746
    :cond_0
    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    if-nez v2, :cond_1

    .line 747
    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    :cond_1
    :goto_0
    const v0, 0x10008000

    .line 748
    invoke-virtual {v2, v0}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    iput-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 749
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 750
    iget-object p1, p1, Landroidx/navigation/NavHostController;->impl:Landroidx/navigation/internal/NavControllerImpl;

    invoke-virtual {p1}, Landroidx/navigation/internal/NavControllerImpl;->getGraph$navigation_runtime_release()Landroidx/navigation/NavGraph;

    move-result-object p1

    .line 751
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Landroidx/room/InvalidationTracker$implementation$1;Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;)V
    .locals 2

    const/4 v0, 0x2

    iput v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->$r8$classId:I

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 760
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    const/4 p1, 0x0

    .line 761
    invoke-static {p1}, Lkotlinx/atomicfu/AtomicFU;->atomic(Z)Lkotlinx/atomicfu/AtomicBoolean;

    move-result-object p1

    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 762
    new-instance p1, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;

    const/4 p2, 0x6

    invoke-direct {p1, p2, p0}, Landroidx/camera/camera2/impl/TorchControl$$ExternalSyntheticLambda1;-><init>(ILjava/lang/Object;)V

    const p2, 0x7fffffff

    const/4 v1, 0x0

    invoke-static {p2, v1, p1, v0}, Lokhttp3/Cookie$Companion;->Channel$default(ILkotlinx/coroutines/channels/BufferOverflow;Lkotlin/jvm/functions/Function1;I)Lkotlinx/coroutines/channels/BufferedChannel;

    move-result-object p1

    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 763
    new-instance p1, Lkotlin/collections/ArrayDeque;

    invoke-direct {p1}, Lkotlin/collections/ArrayDeque;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/activity/MessageCompose;)V
    .locals 3

    const/16 v0, 0xc

    iput v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->$r8$classId:I

    .line 666
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, 0x7f090370

    .line 667
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Lcom/fsck/k9/view/RecipientSelectView;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    const v0, 0x7f090375

    .line 668
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    const v0, 0x7f090371

    .line 669
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    const v0, 0x7f090373

    .line 670
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    check-cast v0, Landroid/widget/ViewAnimator;

    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    const v0, 0x7f090372

    .line 671
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 672
    new-instance v1, Ljava/util/LinkedHashSet;

    invoke-direct {v1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 673
    new-instance v1, Lcom/fsck/k9/activity/compose/ReplyToView$$ExternalSyntheticLambda0;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/fsck/k9/activity/compose/ReplyToView$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/mailstore/LocalStore$7;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v0, 0x7f090374

    .line 674
    invoke-virtual {p1, v0}, Landroidx/appcompat/app/AppCompatActivity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    new-instance v0, Lcom/fsck/k9/activity/compose/ReplyToView$$ExternalSyntheticLambda0;

    const/4 v1, 0x1

    invoke-direct {v0, p0, v1}, Lcom/fsck/k9/activity/compose/ReplyToView$$ExternalSyntheticLambda0;-><init>(Lcom/fsck/k9/mailstore/LocalStore$7;I)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/helper/MessageHelper;Lnet/thunderbird/core/android/account/LegacyAccount;Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;)V
    .locals 1

    const/16 v0, 0xb

    iput v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->$r8$classId:I

    .line 660
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 661
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 662
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 663
    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 664
    iput-object p4, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 665
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;[Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalFolder;Ljava/util/ArrayList;)V
    .locals 1

    const/4 v0, 0x0

    iput v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->$r8$classId:I

    .line 794
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    iput-object p4, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    iput-object p5, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lcom/google/android/flexbox/FlexboxLayoutManager;)V
    .locals 1

    const/16 v0, 0x12

    iput v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->$r8$classId:I

    .line 768
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 769
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V
    .locals 0

    .line 737
    iput p6, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->$r8$classId:I

    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    iput-object p4, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    iput-object p5, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Lokhttp3/Dispatcher;Lcom/fsck/k9/mail/store/pop3/Pop3Store;Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;)V
    .locals 1

    const/16 v0, 0xd

    iput v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->$r8$classId:I

    .line 675
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 676
    iput-object p4, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 677
    new-instance p4, Lcom/fsck/k9/backend/imap/ImapSync;

    const/16 v0, 0x10

    invoke-direct {p4, p1, p2, p3, v0}, Lcom/fsck/k9/backend/imap/ImapSync;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    iput-object p4, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 678
    new-instance p1, Landroidx/work/Configuration$Builder;

    const/16 p4, 0x15

    invoke-direct {p1, p4, p2}, Landroidx/work/Configuration$Builder;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 679
    new-instance p1, Lcom/fsck/k9/backend/pop3/CommandSetFlag;

    invoke-direct {p1, p3}, Lcom/fsck/k9/backend/pop3/CommandSetFlag;-><init>(Lcom/fsck/k9/mail/store/pop3/Pop3Store;)V

    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 680
    new-instance p1, Lcom/beetstra/jutf7/Base64Util;

    const/16 p4, 0x1c

    invoke-direct {p1, p4, p2, p3}, Lcom/beetstra/jutf7/Base64Util;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/util/Map;)V
    .locals 1

    const/16 v0, 0x8

    iput v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 681
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 682
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0, p1}, Ljava/util/LinkedHashMap;-><init>(Ljava/util/Map;)V

    .line 683
    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 684
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 685
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 686
    new-instance p1, Ljava/util/LinkedHashMap;

    invoke-direct {p1}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 687
    new-instance p1, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda6;

    const/4 v0, 0x2

    invoke-direct {p1, v0, p0}, Landroidx/fragment/app/FragmentManager$$ExternalSyntheticLambda6;-><init>(ILjava/lang/Object;)V

    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lnet/openid/appauth/AuthorizationServiceDiscovery;)V
    .locals 1

    const/16 v0, 0x13

    iput v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->$r8$classId:I

    .line 778
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 779
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 780
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->AUTHORIZATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    invoke-virtual {p1, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 781
    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 782
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->TOKEN_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    invoke-virtual {p1, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 783
    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 784
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->REGISTRATION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    invoke-virtual {p1, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 785
    iput-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 786
    sget-object v0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->END_SESSION_ENDPOINT:Lnet/openid/appauth/JsonUtil$UriField;

    invoke-virtual {p1, v0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;->get(Lnet/openid/appauth/JsonUtil$Field;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/net/Uri;

    .line 787
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lokhttp3/internal/concurrent/TaskRunner;)V
    .locals 1

    const/16 v0, 0x14

    iput v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 795
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 796
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 797
    sget-object p1, Lokhttp3/internal/http2/Http2Connection$Listener;->REFUSE_INCOMING_STREAMS:Lokhttp3/internal/http2/Http2Connection$Listener$Companion$REFUSE_INCOMING_STREAMS$1;

    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 798
    sget-object p1, Lokhttp3/internal/http2/FlowControlListener$None;->INSTANCE:Lokhttp3/internal/http2/FlowControlListener$None;

    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Lokio/AsyncTimeout$Companion;Lorg/koin/core/scope/Scope;Lkotlin/jvm/internal/ClassReference;Lorg/koin/core/qualifier/Qualifier;Lorg/koin/core/parameter/ParametersHolder;)V
    .locals 1

    const/16 v0, 0x15

    iput v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->$r8$classId:I

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 688
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 689
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 690
    iput-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 691
    iput-object p3, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 692
    iput-object p4, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 693
    iput-object p5, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 694
    invoke-static {p3}, Lorg/koin/ext/KClassExtKt;->getFullName(Lkotlin/reflect/KClass;)Ljava/lang/String;

    invoke-static {p4}, Lj$/util/Objects;->toString(Ljava/lang/Object;)Ljava/lang/String;

    return-void
.end method

.method public static final access$processingLoop(Lcom/fsck/k9/mailstore/LocalStore$7;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lkotlin/collections/ArrayDeque;

    .line 8
    .line 9
    instance-of v2, p1, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;

    .line 10
    .line 11
    if-eqz v2, :cond_0

    .line 12
    .line 13
    move-object v2, p1

    .line 14
    check-cast v2, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;

    .line 15
    .line 16
    iget v3, v2, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->label:I

    .line 17
    .line 18
    const/high16 v4, -0x80000000

    .line 19
    .line 20
    and-int v5, v3, v4

    .line 21
    .line 22
    if-eqz v5, :cond_0

    .line 23
    .line 24
    sub-int/2addr v3, v4

    .line 25
    iput v3, v2, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->label:I

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    new-instance v2, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;

    .line 29
    .line 30
    invoke-direct {v2, p0, p1}, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;-><init>(Lcom/fsck/k9/mailstore/LocalStore$7;Lkotlin/coroutines/jvm/internal/ContinuationImpl;)V

    .line 31
    .line 32
    .line 33
    :goto_0
    iget-object p1, v2, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->result:Ljava/lang/Object;

    .line 34
    .line 35
    iget v3, v2, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->label:I

    .line 36
    .line 37
    const/4 v4, 0x2

    .line 38
    const/4 v5, 0x1

    .line 39
    sget-object v6, Lkotlin/coroutines/intrinsics/CoroutineSingletons;->COROUTINE_SUSPENDED:Lkotlin/coroutines/intrinsics/CoroutineSingletons;

    .line 40
    .line 41
    if-eqz v3, :cond_3

    .line 42
    .line 43
    if-eq v3, v5, :cond_2

    .line 44
    .line 45
    if-ne v3, v4, :cond_1

    .line 46
    .line 47
    iget v3, v2, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->I$0:I

    .line 48
    .line 49
    :try_start_0
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 50
    .line 51
    .line 52
    goto :goto_5

    .line 53
    :catchall_0
    move-exception p1

    .line 54
    goto :goto_6

    .line 55
    :cond_1
    const-string p0, "call to \'resume\' before \'invoke\' with coroutine"

    .line 56
    .line 57
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 58
    .line 59
    .line 60
    return-void

    .line 61
    :cond_2
    :try_start_1
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 62
    .line 63
    .line 64
    goto :goto_2

    .line 65
    :cond_3
    invoke-static {p1}, Lkotlin/ResultKt;->throwOnFailure(Ljava/lang/Object;)V

    .line 66
    .line 67
    .line 68
    :cond_4
    :goto_1
    :try_start_2
    iput v5, v2, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->label:I

    .line 69
    .line 70
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 71
    .line 72
    .line 73
    invoke-static {v0, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->receive$suspendImpl(Lkotlinx/coroutines/channels/BufferedChannel;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;

    .line 74
    .line 75
    .line 76
    move-result-object p1

    .line 77
    if-ne p1, v6, :cond_5

    .line 78
    .line 79
    goto :goto_4

    .line 80
    :cond_5
    :goto_2
    invoke-virtual {v1, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 81
    .line 82
    .line 83
    :cond_6
    invoke-virtual {v1}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 84
    .line 85
    .line 86
    move-result p1

    .line 87
    if-nez p1, :cond_4

    .line 88
    .line 89
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/BufferedChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    .line 90
    .line 91
    .line 92
    move-result-object p1

    .line 93
    :goto_3
    instance-of v3, p1, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 94
    .line 95
    if-nez v3, :cond_7

    .line 96
    .line 97
    invoke-static {p1}, Lkotlinx/coroutines/channels/ChannelResult;->getOrThrow-impl(Ljava/lang/Object;)V

    .line 98
    .line 99
    .line 100
    invoke-virtual {v1, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 101
    .line 102
    .line 103
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/BufferedChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    .line 104
    .line 105
    .line 106
    move-result-object p1

    .line 107
    goto :goto_3

    .line 108
    :cond_7
    iget v3, v1, Lkotlin/collections/ArrayDeque;->size:I

    .line 109
    .line 110
    iget-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 111
    .line 112
    check-cast p1, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;

    .line 113
    .line 114
    iput v3, v2, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->I$0:I

    .line 115
    .line 116
    iput v4, v2, Landroidx/camera/camera2/pipe/core/ProcessingQueue$processingLoop$1;->label:I

    .line 117
    .line 118
    invoke-virtual {p1, v1, v2}, Lcom/fsck/k9/ui/messageview/MessageViewFragment$onCreate$1;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    .line 120
    .line 121
    move-result-object p1

    .line 122
    if-ne p1, v6, :cond_8

    .line 123
    .line 124
    :goto_4
    return-void

    .line 125
    :cond_8
    :goto_5
    iget p1, v1, Lkotlin/collections/ArrayDeque;->size:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 126
    .line 127
    if-ne v3, p1, :cond_6

    .line 128
    .line 129
    goto :goto_1

    .line 130
    :goto_6
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalStore$7;->releaseUnprocessedElements(Ljava/lang/Throwable;)V

    .line 131
    .line 132
    .line 133
    throw p1
.end method

.method public static fromJson(Lorg/json/JSONObject;)Lcom/fsck/k9/mailstore/LocalStore$7;
    .locals 5

    .line 1
    const-string v0, "json object cannot be null"

    .line 2
    .line 3
    invoke-static {p0, v0}, Lokio/Okio;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    .line 5
    .line 6
    const-string v0, "discoveryDoc"

    .line 7
    .line 8
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 9
    .line 10
    .line 11
    move-result v1

    .line 12
    if-eqz v1, :cond_0

    .line 13
    .line 14
    :try_start_0
    new-instance v1, Lnet/openid/appauth/AuthorizationServiceDiscovery;

    .line 15
    .line 16
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 17
    .line 18
    .line 19
    move-result-object p0

    .line 20
    invoke-direct {v1, p0}, Lnet/openid/appauth/AuthorizationServiceDiscovery;-><init>(Lorg/json/JSONObject;)V

    .line 21
    .line 22
    .line 23
    new-instance p0, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 24
    .line 25
    invoke-direct {p0, v1}, Lcom/fsck/k9/mailstore/LocalStore$7;-><init>(Lnet/openid/appauth/AuthorizationServiceDiscovery;)V
    :try_end_0
    .catch Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 26
    .line 27
    .line 28
    return-object p0

    .line 29
    :catch_0
    move-exception p0

    .line 30
    new-instance v0, Lorg/json/JSONException;

    .line 31
    .line 32
    iget-object p0, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery$MissingArgumentException;->mMissingField:Ljava/lang/String;

    .line 33
    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    .line 35
    .line 36
    const-string v2, "Missing required field in discovery doc: "

    .line 37
    .line 38
    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 39
    .line 40
    .line 41
    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 42
    .line 43
    .line 44
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object p0

    .line 48
    invoke-direct {v0, p0}, Lorg/json/JSONException;-><init>(Ljava/lang/String;)V

    .line 49
    .line 50
    .line 51
    throw v0

    .line 52
    :cond_0
    const-string v0, "authorizationEndpoint"

    .line 53
    .line 54
    invoke-virtual {p0, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v1

    .line 58
    const-string v2, "missing authorizationEndpoint"

    .line 59
    .line 60
    invoke-static {v2, v1}, Lokio/Okio;->checkArgument(Ljava/lang/String;Z)V

    .line 61
    .line 62
    .line 63
    const-string v1, "tokenEndpoint"

    .line 64
    .line 65
    invoke-virtual {p0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 66
    .line 67
    .line 68
    move-result v2

    .line 69
    const-string v3, "missing tokenEndpoint"

    .line 70
    .line 71
    invoke-static {v3, v2}, Lokio/Okio;->checkArgument(Ljava/lang/String;Z)V

    .line 72
    .line 73
    .line 74
    new-instance v2, Lcom/fsck/k9/mailstore/LocalStore$7;

    .line 75
    .line 76
    invoke-static {p0, v0}, Lkotlinx/atomicfu/AtomicFU;->getUri(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    .line 77
    .line 78
    .line 79
    move-result-object v0

    .line 80
    invoke-static {p0, v1}, Lkotlinx/atomicfu/AtomicFU;->getUri(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    .line 81
    .line 82
    .line 83
    move-result-object v1

    .line 84
    const-string v3, "registrationEndpoint"

    .line 85
    .line 86
    invoke-static {p0, v3}, Lkotlinx/atomicfu/AtomicFU;->getUriIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    .line 87
    .line 88
    .line 89
    move-result-object v3

    .line 90
    const-string v4, "endSessionEndpoint"

    .line 91
    .line 92
    invoke-static {p0, v4}, Lkotlinx/atomicfu/AtomicFU;->getUriIfDefined(Lorg/json/JSONObject;Ljava/lang/String;)Landroid/net/Uri;

    .line 93
    .line 94
    .line 95
    move-result-object p0

    .line 96
    invoke-direct {v2, v0, v1, v3, p0}, Lcom/fsck/k9/mailstore/LocalStore$7;-><init>(Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;Landroid/net/Uri;)V

    .line 97
    .line 98
    .line 99
    return-object v2
.end method


# virtual methods
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
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 10
    .line 11
    monitor-enter v1

    .line 12
    :try_start_0
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

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
    sget-object p0, Landroidx/compose/runtime/NeverEqualPolicy;->Empty:Landroidx/camera/core/streamsharing/StreamSharing$$ExternalSyntheticLambda0;
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
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

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
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

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
    invoke-virtual {p0, p2}, Lcom/fsck/k9/mailstore/LocalStore$7;->fail(Ljava/lang/Throwable;)V

    .line 76
    .line 77
    .line 78
    :cond_3
    :goto_1
    new-instance p2, Landroidx/compose/ui/platform/WeakCache;

    .line 79
    .line 80
    new-instance v1, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;

    .line 81
    .line 82
    const/16 v2, 0x8

    .line 83
    .line 84
    invoke-direct {v1, p1, p0, v0, v2}, Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;I)V

    .line 85
    .line 86
    .line 87
    invoke-direct {p2, v1}, Landroidx/compose/ui/platform/WeakCache;-><init>(Lokhttp3/internal/connection/ConnectPlan$$ExternalSyntheticLambda0;)V

    .line 88
    .line 89
    .line 90
    return-object p2

    .line 91
    :goto_2
    monitor-exit v1

    .line 92
    throw p0
.end method

.method public analyzeBidi(I)Ljava/text/Bidi;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/text/Layout;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Ljava/util/ArrayList;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Ljava/util/ArrayList;

    .line 12
    .line 13
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v3, [Z

    .line 16
    .line 17
    aget-boolean v4, v3, p1

    .line 18
    .line 19
    if-eqz v4, :cond_0

    .line 20
    .line 21
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 22
    .line 23
    .line 24
    move-result-object p0

    .line 25
    check-cast p0, Ljava/text/Bidi;

    .line 26
    .line 27
    return-object p0

    .line 28
    :cond_0
    const/4 v4, 0x0

    .line 29
    if-nez p1, :cond_1

    .line 30
    .line 31
    move v5, v4

    .line 32
    goto :goto_0

    .line 33
    :cond_1
    add-int/lit8 v5, p1, -0x1

    .line 34
    .line 35
    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 36
    .line 37
    .line 38
    move-result-object v5

    .line 39
    check-cast v5, Ljava/lang/Number;

    .line 40
    .line 41
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    .line 42
    .line 43
    .line 44
    move-result v5

    .line 45
    :goto_0
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 46
    .line 47
    .line 48
    move-result-object v1

    .line 49
    check-cast v1, Ljava/lang/Number;

    .line 50
    .line 51
    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 52
    .line 53
    .line 54
    move-result v1

    .line 55
    sub-int v11, v1, v5

    .line 56
    .line 57
    iget-object v6, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 58
    .line 59
    check-cast v6, [C

    .line 60
    .line 61
    if-eqz v6, :cond_3

    .line 62
    .line 63
    array-length v7, v6

    .line 64
    if-ge v7, v11, :cond_2

    .line 65
    .line 66
    goto :goto_2

    .line 67
    :cond_2
    :goto_1
    move-object v7, v6

    .line 68
    goto :goto_3

    .line 69
    :cond_3
    :goto_2
    new-array v6, v11, [C

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :goto_3
    invoke-virtual {v0}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    invoke-static {v6, v5, v1, v7, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 77
    .line 78
    .line 79
    invoke-static {v7, v4, v11}, Ljava/text/Bidi;->requiresBidi([CII)Z

    .line 80
    .line 81
    .line 82
    move-result v1

    .line 83
    const/4 v5, 0x0

    .line 84
    const/4 v13, 0x1

    .line 85
    if-eqz v1, :cond_5

    .line 86
    .line 87
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mailstore/LocalStore$7;->getParagraphStart(I)I

    .line 88
    .line 89
    .line 90
    move-result v1

    .line 91
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 92
    .line 93
    .line 94
    move-result v1

    .line 95
    invoke-virtual {v0, v1}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 96
    .line 97
    .line 98
    move-result v0

    .line 99
    const/4 v1, -0x1

    .line 100
    if-ne v0, v1, :cond_4

    .line 101
    .line 102
    move v12, v13

    .line 103
    goto :goto_4

    .line 104
    :cond_4
    move v12, v4

    .line 105
    :goto_4
    new-instance v6, Ljava/text/Bidi;

    .line 106
    .line 107
    const/4 v9, 0x0

    .line 108
    const/4 v10, 0x0

    .line 109
    const/4 v8, 0x0

    .line 110
    invoke-direct/range {v6 .. v12}, Ljava/text/Bidi;-><init>([CI[BIII)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {v6}, Ljava/text/Bidi;->getRunCount()I

    .line 114
    .line 115
    .line 116
    move-result v0

    .line 117
    if-ne v0, v13, :cond_6

    .line 118
    .line 119
    :cond_5
    move-object v6, v5

    .line 120
    :cond_6
    invoke-virtual {v2, p1, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    aput-boolean v13, v3, p1

    .line 124
    .line 125
    if-eqz v6, :cond_8

    .line 126
    .line 127
    iget-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 128
    .line 129
    check-cast p1, [C

    .line 130
    .line 131
    if-ne v7, p1, :cond_7

    .line 132
    .line 133
    move-object v7, v5

    .line 134
    goto :goto_5

    .line 135
    :cond_7
    move-object v7, p1

    .line 136
    :cond_8
    :goto_5
    iput-object v7, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 137
    .line 138
    return-object v6
.end method

.method public build()Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig;
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroidx/camera/core/impl/DeferrableSurface;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const-string v0, " surface"

    .line 8
    .line 9
    goto :goto_0

    .line 10
    :cond_0
    const-string v0, ""

    .line 11
    .line 12
    :goto_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 13
    .line 14
    check-cast v1, Ljava/util/List;

    .line 15
    .line 16
    if-nez v1, :cond_1

    .line 17
    .line 18
    const-string v1, " sharedSurfaces"

    .line 19
    .line 20
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 21
    .line 22
    .line 23
    move-result-object v0

    .line 24
    :cond_1
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 25
    .line 26
    check-cast v1, Ljava/lang/Integer;

    .line 27
    .line 28
    if-nez v1, :cond_2

    .line 29
    .line 30
    const-string v1, " mirrorMode"

    .line 31
    .line 32
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    :cond_2
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast v1, Ljava/lang/Integer;

    .line 39
    .line 40
    if-nez v1, :cond_3

    .line 41
    .line 42
    const-string v1, " surfaceGroupId"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_3
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast v1, Landroidx/camera/core/DynamicRange;

    .line 51
    .line 52
    if-nez v1, :cond_4

    .line 53
    .line 54
    const-string v1, " dynamicRange"

    .line 55
    .line 56
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v0

    .line 60
    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    .line 61
    .line 62
    .line 63
    move-result v1

    .line 64
    if-eqz v1, :cond_5

    .line 65
    .line 66
    new-instance v2, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig;

    .line 67
    .line 68
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 69
    .line 70
    move-object v3, v0

    .line 71
    check-cast v3, Landroidx/camera/core/impl/DeferrableSurface;

    .line 72
    .line 73
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 74
    .line 75
    move-object v4, v0

    .line 76
    check-cast v4, Ljava/util/List;

    .line 77
    .line 78
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 79
    .line 80
    check-cast v0, Ljava/lang/Integer;

    .line 81
    .line 82
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 83
    .line 84
    .line 85
    move-result v5

    .line 86
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast v0, Ljava/lang/Integer;

    .line 89
    .line 90
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    .line 91
    .line 92
    .line 93
    move-result v6

    .line 94
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 95
    .line 96
    move-object v7, p0

    .line 97
    check-cast v7, Landroidx/camera/core/DynamicRange;

    .line 98
    .line 99
    invoke-direct/range {v2 .. v7}, Landroidx/camera/core/impl/AutoValue_SessionConfig_OutputConfig;-><init>(Landroidx/camera/core/impl/DeferrableSurface;Ljava/util/List;IILandroidx/camera/core/DynamicRange;)V

    .line 100
    .line 101
    .line 102
    return-object v2

    .line 103
    :cond_5
    const-string p0, "Missing required properties:"

    .line 104
    .line 105
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 106
    .line 107
    .line 108
    move-result-object p0

    .line 109
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 110
    .line 111
    .line 112
    const/4 p0, 0x0

    .line 113
    return-object p0
.end method

.method public calculateFlexLines(Lcom/fsck/k9/mailstore/LocalFolder$9;IIIILjava/util/List;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p5

    .line 4
    .line 5
    iget-object v2, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 8
    .line 9
    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 10
    .line 11
    .line 12
    move-result v3

    .line 13
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 14
    .line 15
    .line 16
    move-result v4

    .line 17
    invoke-static/range {p2 .. p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 18
    .line 19
    .line 20
    move-result v5

    .line 21
    if-nez p6, :cond_0

    .line 22
    .line 23
    new-instance v6, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 26
    .line 27
    .line 28
    :goto_0
    move-object/from16 v7, p1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_0
    move-object/from16 v6, p6

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :goto_1
    iput-object v6, v7, Lcom/fsck/k9/mailstore/LocalFolder$9;->val$messages:Ljava/util/List;

    .line 35
    .line 36
    const/4 v7, -0x1

    .line 37
    if-ne v1, v7, :cond_1

    .line 38
    .line 39
    const/4 v10, 0x1

    .line 40
    goto :goto_2

    .line 41
    :cond_1
    const/4 v10, 0x0

    .line 42
    :goto_2
    if-eqz v3, :cond_3

    .line 43
    .line 44
    iget-object v11, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 45
    .line 46
    if-eqz v11, :cond_2

    .line 47
    .line 48
    sget-object v12, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 49
    .line 50
    invoke-virtual {v11}, Landroid/view/View;->getPaddingStart()I

    .line 51
    .line 52
    .line 53
    move-result v11

    .line 54
    goto :goto_3

    .line 55
    :cond_2
    const/4 v11, 0x0

    .line 56
    goto :goto_3

    .line 57
    :cond_3
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 58
    .line 59
    .line 60
    move-result v11

    .line 61
    :goto_3
    if-eqz v3, :cond_5

    .line 62
    .line 63
    iget-object v12, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 64
    .line 65
    if-eqz v12, :cond_4

    .line 66
    .line 67
    sget-object v13, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 68
    .line 69
    invoke-virtual {v12}, Landroid/view/View;->getPaddingEnd()I

    .line 70
    .line 71
    .line 72
    move-result v12

    .line 73
    goto :goto_4

    .line 74
    :cond_4
    const/4 v12, 0x0

    .line 75
    goto :goto_4

    .line 76
    :cond_5
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 77
    .line 78
    .line 79
    move-result v12

    .line 80
    :goto_4
    if-eqz v3, :cond_6

    .line 81
    .line 82
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 83
    .line 84
    .line 85
    move-result v13

    .line 86
    goto :goto_5

    .line 87
    :cond_6
    iget-object v13, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 88
    .line 89
    if-eqz v13, :cond_7

    .line 90
    .line 91
    sget-object v14, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 92
    .line 93
    invoke-virtual {v13}, Landroid/view/View;->getPaddingStart()I

    .line 94
    .line 95
    .line 96
    move-result v13

    .line 97
    goto :goto_5

    .line 98
    :cond_7
    const/4 v13, 0x0

    .line 99
    :goto_5
    if-eqz v3, :cond_8

    .line 100
    .line 101
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 102
    .line 103
    .line 104
    move-result v14

    .line 105
    goto :goto_6

    .line 106
    :cond_8
    iget-object v14, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mRecyclerView:Landroidx/recyclerview/widget/RecyclerView;

    .line 107
    .line 108
    if-eqz v14, :cond_9

    .line 109
    .line 110
    sget-object v15, Landroidx/core/view/ViewCompat;->sViewPropertyAnimatorMap:Ljava/util/WeakHashMap;

    .line 111
    .line 112
    invoke-virtual {v14}, Landroid/view/View;->getPaddingEnd()I

    .line 113
    .line 114
    .line 115
    move-result v14

    .line 116
    goto :goto_6

    .line 117
    :cond_9
    const/4 v14, 0x0

    .line 118
    :goto_6
    new-instance v15, Lcom/google/android/flexbox/FlexLine;

    .line 119
    .line 120
    invoke-direct {v15}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 121
    .line 122
    .line 123
    move/from16 v9, p4

    .line 124
    .line 125
    iput v9, v15, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 126
    .line 127
    add-int/2addr v11, v12

    .line 128
    iput v11, v15, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 129
    .line 130
    iget-object v12, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 131
    .line 132
    invoke-virtual {v12}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 133
    .line 134
    .line 135
    move-result v12

    .line 136
    const/high16 v16, -0x80000000

    .line 137
    .line 138
    move/from16 v18, v16

    .line 139
    .line 140
    const/16 p2, 0x1

    .line 141
    .line 142
    const/4 v8, 0x0

    .line 143
    const/16 v17, 0x0

    .line 144
    .line 145
    :goto_7
    if-ge v9, v12, :cond_36

    .line 146
    .line 147
    invoke-virtual {v2, v9}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    .line 148
    .line 149
    .line 150
    move-result-object v7

    .line 151
    if-nez v7, :cond_c

    .line 152
    .line 153
    add-int/lit8 v7, v12, -0x1

    .line 154
    .line 155
    if-ne v9, v7, :cond_b

    .line 156
    .line 157
    iget v7, v15, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 158
    .line 159
    move/from16 v19, v3

    .line 160
    .line 161
    iget v3, v15, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    .line 162
    .line 163
    sub-int/2addr v7, v3

    .line 164
    if-eqz v7, :cond_a

    .line 165
    .line 166
    iput v8, v15, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    .line 167
    .line 168
    iput v9, v15, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    .line 169
    .line 170
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 171
    .line 172
    .line 173
    :cond_a
    :goto_8
    move/from16 p4, v10

    .line 174
    .line 175
    goto :goto_9

    .line 176
    :cond_b
    move/from16 v19, v3

    .line 177
    .line 178
    goto :goto_8

    .line 179
    :cond_c
    move/from16 v19, v3

    .line 180
    .line 181
    invoke-virtual {v7}, Landroid/view/View;->getVisibility()I

    .line 182
    .line 183
    .line 184
    move-result v3

    .line 185
    move/from16 p4, v10

    .line 186
    .line 187
    const/16 v10, 0x8

    .line 188
    .line 189
    if-ne v3, v10, :cond_e

    .line 190
    .line 191
    iget v3, v15, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    .line 192
    .line 193
    add-int/lit8 v3, v3, 0x1

    .line 194
    .line 195
    iput v3, v15, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    .line 196
    .line 197
    iget v7, v15, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 198
    .line 199
    add-int/lit8 v7, v7, 0x1

    .line 200
    .line 201
    iput v7, v15, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 202
    .line 203
    add-int/lit8 v10, v12, -0x1

    .line 204
    .line 205
    if-ne v9, v10, :cond_d

    .line 206
    .line 207
    sub-int/2addr v7, v3

    .line 208
    if-eqz v7, :cond_d

    .line 209
    .line 210
    iput v8, v15, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    .line 211
    .line 212
    iput v9, v15, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    .line 213
    .line 214
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 215
    .line 216
    .line 217
    :cond_d
    :goto_9
    move/from16 v7, p2

    .line 218
    .line 219
    move/from16 v10, p4

    .line 220
    .line 221
    move v3, v1

    .line 222
    move/from16 v20, v4

    .line 223
    .line 224
    move/from16 v21, v12

    .line 225
    .line 226
    move/from16 v23, v13

    .line 227
    .line 228
    move/from16 v22, v14

    .line 229
    .line 230
    const/4 v13, -0x1

    .line 231
    move/from16 v4, p3

    .line 232
    .line 233
    goto/16 :goto_27

    .line 234
    .line 235
    :cond_e
    instance-of v3, v7, Landroid/widget/CompoundButton;

    .line 236
    .line 237
    if-eqz v3, :cond_13

    .line 238
    .line 239
    move-object v3, v7

    .line 240
    check-cast v3, Landroid/widget/CompoundButton;

    .line 241
    .line 242
    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 243
    .line 244
    .line 245
    move-result-object v10

    .line 246
    check-cast v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 247
    .line 248
    move-object/from16 v20, v3

    .line 249
    .line 250
    iget v3, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    .line 251
    .line 252
    move/from16 v21, v12

    .line 253
    .line 254
    iget v12, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    .line 255
    .line 256
    invoke-virtual/range {v20 .. v20}, Landroid/widget/CompoundButton;->getButtonDrawable()Landroid/graphics/drawable/Drawable;

    .line 257
    .line 258
    .line 259
    move-result-object v20

    .line 260
    if-nez v20, :cond_f

    .line 261
    .line 262
    const/16 v22, 0x0

    .line 263
    .line 264
    goto :goto_a

    .line 265
    :cond_f
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getMinimumWidth()I

    .line 266
    .line 267
    .line 268
    move-result v22

    .line 269
    :goto_a
    if-nez v20, :cond_10

    .line 270
    .line 271
    const/16 v20, 0x0

    .line 272
    .line 273
    :goto_b
    move/from16 v23, v13

    .line 274
    .line 275
    const/4 v13, -0x1

    .line 276
    goto :goto_c

    .line 277
    :cond_10
    invoke-virtual/range {v20 .. v20}, Landroid/graphics/drawable/Drawable;->getMinimumHeight()I

    .line 278
    .line 279
    .line 280
    move-result v20

    .line 281
    goto :goto_b

    .line 282
    :goto_c
    if-ne v3, v13, :cond_11

    .line 283
    .line 284
    move/from16 v3, v22

    .line 285
    .line 286
    :cond_11
    iput v3, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    .line 287
    .line 288
    if-ne v12, v13, :cond_12

    .line 289
    .line 290
    move/from16 v12, v20

    .line 291
    .line 292
    :cond_12
    iput v12, v10, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    .line 293
    .line 294
    goto :goto_d

    .line 295
    :cond_13
    move/from16 v21, v12

    .line 296
    .line 297
    move/from16 v23, v13

    .line 298
    .line 299
    :goto_d
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 300
    .line 301
    .line 302
    move-result-object v3

    .line 303
    check-cast v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 304
    .line 305
    iget v10, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    .line 306
    .line 307
    const/4 v12, 0x4

    .line 308
    if-ne v10, v12, :cond_14

    .line 309
    .line 310
    iget-object v10, v15, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/ArrayList;

    .line 311
    .line 312
    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 313
    .line 314
    .line 315
    move-result-object v12

    .line 316
    invoke-virtual {v10, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 317
    .line 318
    .line 319
    :cond_14
    if-eqz v19, :cond_15

    .line 320
    .line 321
    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 322
    .line 323
    goto :goto_e

    .line 324
    :cond_15
    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 325
    .line 326
    :goto_e
    iget v12, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexBasisPercent:F

    .line 327
    .line 328
    const/high16 v13, -0x40800000    # -1.0f

    .line 329
    .line 330
    cmpl-float v13, v12, v13

    .line 331
    .line 332
    if-eqz v13, :cond_16

    .line 333
    .line 334
    const/high16 v13, 0x40000000    # 2.0f

    .line 335
    .line 336
    if-ne v4, v13, :cond_16

    .line 337
    .line 338
    int-to-float v10, v5

    .line 339
    mul-float/2addr v10, v12

    .line 340
    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    .line 341
    .line 342
    .line 343
    move-result v10

    .line 344
    :cond_16
    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 345
    .line 346
    if-eqz v19, :cond_17

    .line 347
    .line 348
    add-int/2addr v12, v11

    .line 349
    iget v13, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 350
    .line 351
    add-int/2addr v12, v13

    .line 352
    iget v13, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 353
    .line 354
    move/from16 v20, v4

    .line 355
    .line 356
    iget v4, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 357
    .line 358
    move/from16 v22, v14

    .line 359
    .line 360
    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollHorizontally()Z

    .line 361
    .line 362
    .line 363
    move-result v14

    .line 364
    invoke-static {v14, v13, v4, v12, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(ZIIII)I

    .line 365
    .line 366
    .line 367
    move-result v4

    .line 368
    add-int v13, v23, v22

    .line 369
    .line 370
    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 371
    .line 372
    add-int/2addr v13, v10

    .line 373
    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 374
    .line 375
    add-int/2addr v13, v10

    .line 376
    add-int/2addr v13, v8

    .line 377
    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 378
    .line 379
    iget v12, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 380
    .line 381
    iget v14, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 382
    .line 383
    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollVertically()Z

    .line 384
    .line 385
    .line 386
    move-result v1

    .line 387
    invoke-static {v1, v12, v14, v13, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(ZIIII)I

    .line 388
    .line 389
    .line 390
    move-result v1

    .line 391
    invoke-virtual {v7, v4, v1}, Landroid/view/View;->measure(II)V

    .line 392
    .line 393
    .line 394
    invoke-virtual {v0, v9, v4, v1, v7}, Lcom/fsck/k9/mailstore/LocalStore$7;->updateMeasureCache(IIILandroid/view/View;)V

    .line 395
    .line 396
    .line 397
    goto :goto_f

    .line 398
    :cond_17
    move/from16 v20, v4

    .line 399
    .line 400
    move/from16 v22, v14

    .line 401
    .line 402
    add-int v13, v23, v22

    .line 403
    .line 404
    add-int/2addr v13, v12

    .line 405
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 406
    .line 407
    add-int/2addr v13, v1

    .line 408
    add-int/2addr v13, v8

    .line 409
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 410
    .line 411
    iget v4, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 412
    .line 413
    iget v12, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 414
    .line 415
    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollHorizontally()Z

    .line 416
    .line 417
    .line 418
    move-result v14

    .line 419
    invoke-static {v14, v4, v12, v13, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(ZIIII)I

    .line 420
    .line 421
    .line 422
    move-result v1

    .line 423
    iget v4, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 424
    .line 425
    add-int/2addr v4, v11

    .line 426
    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 427
    .line 428
    add-int/2addr v4, v12

    .line 429
    iget v12, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 430
    .line 431
    iget v13, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 432
    .line 433
    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollVertically()Z

    .line 434
    .line 435
    .line 436
    move-result v14

    .line 437
    invoke-static {v14, v12, v13, v4, v10}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(ZIIII)I

    .line 438
    .line 439
    .line 440
    move-result v4

    .line 441
    invoke-virtual {v7, v1, v4}, Landroid/view/View;->measure(II)V

    .line 442
    .line 443
    .line 444
    invoke-virtual {v0, v9, v1, v4, v7}, Lcom/fsck/k9/mailstore/LocalStore$7;->updateMeasureCache(IIILandroid/view/View;)V

    .line 445
    .line 446
    .line 447
    :goto_f
    invoke-virtual {v2, v7, v9}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    .line 448
    .line 449
    .line 450
    invoke-virtual {v0, v7, v9}, Lcom/fsck/k9/mailstore/LocalStore$7;->checkSizeConstraints(Landroid/view/View;I)V

    .line 451
    .line 452
    .line 453
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredState()I

    .line 454
    .line 455
    .line 456
    move-result v1

    .line 457
    move/from16 v10, v17

    .line 458
    .line 459
    invoke-static {v10, v1}, Landroid/view/View;->combineMeasuredStates(II)I

    .line 460
    .line 461
    .line 462
    move-result v17

    .line 463
    iget v1, v15, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 464
    .line 465
    if-eqz v19, :cond_18

    .line 466
    .line 467
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 468
    .line 469
    .line 470
    move-result v10

    .line 471
    goto :goto_10

    .line 472
    :cond_18
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 473
    .line 474
    .line 475
    move-result v10

    .line 476
    :goto_10
    if-eqz v19, :cond_19

    .line 477
    .line 478
    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 479
    .line 480
    goto :goto_11

    .line 481
    :cond_19
    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 482
    .line 483
    :goto_11
    add-int/2addr v10, v12

    .line 484
    if-eqz v19, :cond_1a

    .line 485
    .line 486
    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 487
    .line 488
    goto :goto_12

    .line 489
    :cond_1a
    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 490
    .line 491
    :goto_12
    add-int/2addr v10, v12

    .line 492
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 493
    .line 494
    .line 495
    move-result v12

    .line 496
    iget v13, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    .line 497
    .line 498
    if-nez v13, :cond_1c

    .line 499
    .line 500
    :cond_1b
    :goto_13
    move/from16 v1, p2

    .line 501
    .line 502
    goto/16 :goto_19

    .line 503
    .line 504
    :cond_1c
    iget-boolean v13, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mWrapBefore:Z

    .line 505
    .line 506
    if-eqz v13, :cond_1d

    .line 507
    .line 508
    goto :goto_16

    .line 509
    :cond_1d
    if-nez v20, :cond_1e

    .line 510
    .line 511
    goto :goto_13

    .line 512
    :cond_1e
    iget v13, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mMaxLine:I

    .line 513
    .line 514
    const/4 v14, -0x1

    .line 515
    if-eq v13, v14, :cond_1f

    .line 516
    .line 517
    add-int/lit8 v12, v12, 0x1

    .line 518
    .line 519
    if-gt v13, v12, :cond_1f

    .line 520
    .line 521
    goto :goto_13

    .line 522
    :cond_1f
    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 523
    .line 524
    .line 525
    move-result v12

    .line 526
    if-eqz v12, :cond_20

    .line 527
    .line 528
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 529
    .line 530
    .line 531
    move-result-object v12

    .line 532
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 533
    .line 534
    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 535
    .line 536
    iget v12, v12, Landroid/graphics/Rect;->left:I

    .line 537
    .line 538
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 539
    .line 540
    .line 541
    move-result-object v13

    .line 542
    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 543
    .line 544
    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 545
    .line 546
    iget v13, v13, Landroid/graphics/Rect;->right:I

    .line 547
    .line 548
    :goto_14
    add-int/2addr v12, v13

    .line 549
    goto :goto_15

    .line 550
    :cond_20
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 551
    .line 552
    .line 553
    move-result-object v12

    .line 554
    check-cast v12, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 555
    .line 556
    iget-object v12, v12, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 557
    .line 558
    iget v12, v12, Landroid/graphics/Rect;->top:I

    .line 559
    .line 560
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 561
    .line 562
    .line 563
    move-result-object v13

    .line 564
    check-cast v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 565
    .line 566
    iget-object v13, v13, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 567
    .line 568
    iget v13, v13, Landroid/graphics/Rect;->bottom:I

    .line 569
    .line 570
    goto :goto_14

    .line 571
    :goto_15
    if-lez v12, :cond_21

    .line 572
    .line 573
    add-int/2addr v10, v12

    .line 574
    :cond_21
    add-int/2addr v1, v10

    .line 575
    if-ge v5, v1, :cond_1b

    .line 576
    .line 577
    :goto_16
    iget v1, v15, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 578
    .line 579
    iget v10, v15, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    .line 580
    .line 581
    sub-int/2addr v1, v10

    .line 582
    if-lez v1, :cond_23

    .line 583
    .line 584
    if-lez v9, :cond_22

    .line 585
    .line 586
    add-int/lit8 v1, v9, -0x1

    .line 587
    .line 588
    goto :goto_17

    .line 589
    :cond_22
    const/4 v1, 0x0

    .line 590
    :goto_17
    iput v8, v15, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    .line 591
    .line 592
    iput v1, v15, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    .line 593
    .line 594
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 595
    .line 596
    .line 597
    iget v1, v15, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 598
    .line 599
    add-int/2addr v8, v1

    .line 600
    :cond_23
    if-eqz v19, :cond_24

    .line 601
    .line 602
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 603
    .line 604
    const/4 v13, -0x1

    .line 605
    if-ne v1, v13, :cond_25

    .line 606
    .line 607
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 608
    .line 609
    .line 610
    move-result v1

    .line 611
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 612
    .line 613
    .line 614
    move-result v10

    .line 615
    add-int/2addr v10, v1

    .line 616
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 617
    .line 618
    add-int/2addr v10, v1

    .line 619
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 620
    .line 621
    add-int/2addr v10, v1

    .line 622
    add-int/2addr v10, v8

    .line 623
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 624
    .line 625
    iget v12, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 626
    .line 627
    iget v13, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 628
    .line 629
    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollVertically()Z

    .line 630
    .line 631
    .line 632
    move-result v14

    .line 633
    invoke-static {v14, v12, v13, v10, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(ZIIII)I

    .line 634
    .line 635
    .line 636
    move-result v1

    .line 637
    invoke-virtual {v7, v4, v1}, Landroid/view/View;->measure(II)V

    .line 638
    .line 639
    .line 640
    invoke-virtual {v0, v7, v9}, Lcom/fsck/k9/mailstore/LocalStore$7;->checkSizeConstraints(Landroid/view/View;I)V

    .line 641
    .line 642
    .line 643
    goto :goto_18

    .line 644
    :cond_24
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 645
    .line 646
    const/4 v13, -0x1

    .line 647
    if-ne v1, v13, :cond_25

    .line 648
    .line 649
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 650
    .line 651
    .line 652
    move-result v1

    .line 653
    invoke-virtual {v2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 654
    .line 655
    .line 656
    move-result v10

    .line 657
    add-int/2addr v10, v1

    .line 658
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 659
    .line 660
    add-int/2addr v10, v1

    .line 661
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 662
    .line 663
    add-int/2addr v10, v1

    .line 664
    add-int/2addr v10, v8

    .line 665
    iget v1, v3, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 666
    .line 667
    iget v12, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 668
    .line 669
    iget v13, v2, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 670
    .line 671
    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollHorizontally()Z

    .line 672
    .line 673
    .line 674
    move-result v14

    .line 675
    invoke-static {v14, v12, v13, v10, v1}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(ZIIII)I

    .line 676
    .line 677
    .line 678
    move-result v1

    .line 679
    invoke-virtual {v7, v1, v4}, Landroid/view/View;->measure(II)V

    .line 680
    .line 681
    .line 682
    invoke-virtual {v0, v7, v9}, Lcom/fsck/k9/mailstore/LocalStore$7;->checkSizeConstraints(Landroid/view/View;I)V

    .line 683
    .line 684
    .line 685
    :cond_25
    :goto_18
    new-instance v15, Lcom/google/android/flexbox/FlexLine;

    .line 686
    .line 687
    invoke-direct {v15}, Lcom/google/android/flexbox/FlexLine;-><init>()V

    .line 688
    .line 689
    .line 690
    move/from16 v1, p2

    .line 691
    .line 692
    iput v1, v15, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 693
    .line 694
    iput v11, v15, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 695
    .line 696
    iput v9, v15, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 697
    .line 698
    move/from16 v1, v16

    .line 699
    .line 700
    goto :goto_1a

    .line 701
    :goto_19
    iget v4, v15, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 702
    .line 703
    add-int/2addr v4, v1

    .line 704
    iput v4, v15, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 705
    .line 706
    move/from16 v1, v18

    .line 707
    .line 708
    :goto_1a
    iget-boolean v4, v15, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    .line 709
    .line 710
    iget v10, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    .line 711
    .line 712
    const/4 v12, 0x0

    .line 713
    cmpl-float v10, v10, v12

    .line 714
    .line 715
    if-eqz v10, :cond_26

    .line 716
    .line 717
    const/4 v10, 0x1

    .line 718
    goto :goto_1b

    .line 719
    :cond_26
    const/4 v10, 0x0

    .line 720
    :goto_1b
    or-int/2addr v4, v10

    .line 721
    iput-boolean v4, v15, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    .line 722
    .line 723
    iget-boolean v4, v15, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    .line 724
    .line 725
    iget v10, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    .line 726
    .line 727
    cmpl-float v10, v10, v12

    .line 728
    .line 729
    if-eqz v10, :cond_27

    .line 730
    .line 731
    const/4 v10, 0x1

    .line 732
    goto :goto_1c

    .line 733
    :cond_27
    const/4 v10, 0x0

    .line 734
    :goto_1c
    or-int/2addr v4, v10

    .line 735
    iput-boolean v4, v15, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    .line 736
    .line 737
    iget-object v4, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 738
    .line 739
    check-cast v4, [I

    .line 740
    .line 741
    if-eqz v4, :cond_28

    .line 742
    .line 743
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 744
    .line 745
    .line 746
    move-result v10

    .line 747
    aput v10, v4, v9

    .line 748
    .line 749
    :cond_28
    iget v4, v15, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 750
    .line 751
    if-eqz v19, :cond_29

    .line 752
    .line 753
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 754
    .line 755
    .line 756
    move-result v10

    .line 757
    goto :goto_1d

    .line 758
    :cond_29
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 759
    .line 760
    .line 761
    move-result v10

    .line 762
    :goto_1d
    if-eqz v19, :cond_2a

    .line 763
    .line 764
    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 765
    .line 766
    goto :goto_1e

    .line 767
    :cond_2a
    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 768
    .line 769
    :goto_1e
    add-int/2addr v10, v12

    .line 770
    if-eqz v19, :cond_2b

    .line 771
    .line 772
    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 773
    .line 774
    goto :goto_1f

    .line 775
    :cond_2b
    iget v12, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 776
    .line 777
    :goto_1f
    add-int/2addr v10, v12

    .line 778
    add-int/2addr v10, v4

    .line 779
    iput v10, v15, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 780
    .line 781
    iget v4, v15, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 782
    .line 783
    iget v10, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    .line 784
    .line 785
    add-float/2addr v4, v10

    .line 786
    iput v4, v15, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 787
    .line 788
    iget v4, v15, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 789
    .line 790
    iget v10, v3, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    .line 791
    .line 792
    add-float/2addr v4, v10

    .line 793
    iput v4, v15, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 794
    .line 795
    sget-object v4, Lcom/google/android/flexbox/FlexboxLayoutManager;->TEMP_RECT:Landroid/graphics/Rect;

    .line 796
    .line 797
    invoke-virtual {v2, v4, v7}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->calculateItemDecorationsForChild(Landroid/graphics/Rect;Landroid/view/View;)V

    .line 798
    .line 799
    .line 800
    invoke-virtual {v2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->isMainAxisDirectionHorizontal()Z

    .line 801
    .line 802
    .line 803
    move-result v4

    .line 804
    if-eqz v4, :cond_2c

    .line 805
    .line 806
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 807
    .line 808
    .line 809
    move-result-object v4

    .line 810
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 811
    .line 812
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 813
    .line 814
    iget v4, v4, Landroid/graphics/Rect;->left:I

    .line 815
    .line 816
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 817
    .line 818
    .line 819
    move-result-object v10

    .line 820
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 821
    .line 822
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 823
    .line 824
    iget v10, v10, Landroid/graphics/Rect;->right:I

    .line 825
    .line 826
    add-int/2addr v4, v10

    .line 827
    iget v10, v15, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 828
    .line 829
    add-int/2addr v10, v4

    .line 830
    iput v10, v15, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 831
    .line 832
    iget v10, v15, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 833
    .line 834
    add-int/2addr v10, v4

    .line 835
    iput v10, v15, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 836
    .line 837
    goto :goto_20

    .line 838
    :cond_2c
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 839
    .line 840
    .line 841
    move-result-object v4

    .line 842
    check-cast v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 843
    .line 844
    iget-object v4, v4, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 845
    .line 846
    iget v4, v4, Landroid/graphics/Rect;->top:I

    .line 847
    .line 848
    invoke-virtual {v7}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 849
    .line 850
    .line 851
    move-result-object v10

    .line 852
    check-cast v10, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;

    .line 853
    .line 854
    iget-object v10, v10, Landroidx/recyclerview/widget/RecyclerView$LayoutParams;->mDecorInsets:Landroid/graphics/Rect;

    .line 855
    .line 856
    iget v10, v10, Landroid/graphics/Rect;->bottom:I

    .line 857
    .line 858
    add-int/2addr v4, v10

    .line 859
    iget v10, v15, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 860
    .line 861
    add-int/2addr v10, v4

    .line 862
    iput v10, v15, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 863
    .line 864
    iget v10, v15, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 865
    .line 866
    add-int/2addr v10, v4

    .line 867
    iput v10, v15, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 868
    .line 869
    :goto_20
    if-eqz v19, :cond_2d

    .line 870
    .line 871
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 872
    .line 873
    .line 874
    move-result v4

    .line 875
    goto :goto_21

    .line 876
    :cond_2d
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredWidth()I

    .line 877
    .line 878
    .line 879
    move-result v4

    .line 880
    :goto_21
    if-eqz v19, :cond_2e

    .line 881
    .line 882
    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 883
    .line 884
    goto :goto_22

    .line 885
    :cond_2e
    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 886
    .line 887
    :goto_22
    add-int/2addr v4, v10

    .line 888
    if-eqz v19, :cond_2f

    .line 889
    .line 890
    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 891
    .line 892
    goto :goto_23

    .line 893
    :cond_2f
    iget v10, v3, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 894
    .line 895
    :goto_23
    add-int/2addr v4, v10

    .line 896
    invoke-virtual {v2, v7}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    .line 897
    .line 898
    .line 899
    move-result v10

    .line 900
    add-int/2addr v10, v4

    .line 901
    invoke-static {v1, v10}, Ljava/lang/Math;->max(II)I

    .line 902
    .line 903
    .line 904
    move-result v1

    .line 905
    iget v4, v15, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 906
    .line 907
    invoke-static {v4, v1}, Ljava/lang/Math;->max(II)I

    .line 908
    .line 909
    .line 910
    move-result v4

    .line 911
    iput v4, v15, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 912
    .line 913
    if-eqz v19, :cond_31

    .line 914
    .line 915
    iget v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    .line 916
    .line 917
    iget v10, v15, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 918
    .line 919
    const/4 v12, 0x2

    .line 920
    if-eq v4, v12, :cond_30

    .line 921
    .line 922
    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    .line 923
    .line 924
    .line 925
    move-result v4

    .line 926
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 927
    .line 928
    add-int/2addr v4, v3

    .line 929
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    .line 930
    .line 931
    .line 932
    move-result v3

    .line 933
    iput v3, v15, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 934
    .line 935
    goto :goto_24

    .line 936
    :cond_30
    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    .line 937
    .line 938
    .line 939
    move-result v4

    .line 940
    invoke-virtual {v7}, Landroid/view/View;->getBaseline()I

    .line 941
    .line 942
    .line 943
    move-result v7

    .line 944
    sub-int/2addr v4, v7

    .line 945
    iget v3, v3, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 946
    .line 947
    add-int/2addr v4, v3

    .line 948
    invoke-static {v10, v4}, Ljava/lang/Math;->max(II)I

    .line 949
    .line 950
    .line 951
    move-result v3

    .line 952
    iput v3, v15, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 953
    .line 954
    :cond_31
    :goto_24
    add-int/lit8 v12, v21, -0x1

    .line 955
    .line 956
    if-ne v9, v12, :cond_32

    .line 957
    .line 958
    iget v3, v15, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 959
    .line 960
    iget v4, v15, Lcom/google/android/flexbox/FlexLine;->mGoneItemCount:I

    .line 961
    .line 962
    sub-int/2addr v3, v4

    .line 963
    if-eqz v3, :cond_32

    .line 964
    .line 965
    iput v8, v15, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    .line 966
    .line 967
    iput v9, v15, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    .line 968
    .line 969
    invoke-interface {v6, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 970
    .line 971
    .line 972
    iget v3, v15, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 973
    .line 974
    add-int/2addr v8, v3

    .line 975
    :cond_32
    move/from16 v3, p5

    .line 976
    .line 977
    const/4 v13, -0x1

    .line 978
    if-eq v3, v13, :cond_33

    .line 979
    .line 980
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 981
    .line 982
    .line 983
    move-result v4

    .line 984
    if-lez v4, :cond_33

    .line 985
    .line 986
    invoke-interface {v6}, Ljava/util/List;->size()I

    .line 987
    .line 988
    .line 989
    move-result v4

    .line 990
    const/4 v7, 0x1

    .line 991
    sub-int/2addr v4, v7

    .line 992
    invoke-interface {v6, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 993
    .line 994
    .line 995
    move-result-object v4

    .line 996
    check-cast v4, Lcom/google/android/flexbox/FlexLine;

    .line 997
    .line 998
    iget v4, v4, Lcom/google/android/flexbox/FlexLine;->mLastIndex:I

    .line 999
    .line 1000
    if-lt v4, v3, :cond_34

    .line 1001
    .line 1002
    if-lt v9, v3, :cond_34

    .line 1003
    .line 1004
    if-nez p4, :cond_34

    .line 1005
    .line 1006
    iget v4, v15, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 1007
    .line 1008
    neg-int v4, v4

    .line 1009
    move v8, v4

    .line 1010
    move v10, v7

    .line 1011
    :goto_25
    move/from16 v4, p3

    .line 1012
    .line 1013
    goto :goto_26

    .line 1014
    :cond_33
    const/4 v7, 0x1

    .line 1015
    :cond_34
    move/from16 v10, p4

    .line 1016
    .line 1017
    goto :goto_25

    .line 1018
    :goto_26
    if-le v8, v4, :cond_35

    .line 1019
    .line 1020
    if-eqz v10, :cond_35

    .line 1021
    .line 1022
    goto :goto_28

    .line 1023
    :cond_35
    move/from16 v18, v1

    .line 1024
    .line 1025
    :goto_27
    add-int/lit8 v9, v9, 0x1

    .line 1026
    .line 1027
    move v1, v3

    .line 1028
    move/from16 p2, v7

    .line 1029
    .line 1030
    move v7, v13

    .line 1031
    move/from16 v3, v19

    .line 1032
    .line 1033
    move/from16 v4, v20

    .line 1034
    .line 1035
    move/from16 v12, v21

    .line 1036
    .line 1037
    move/from16 v14, v22

    .line 1038
    .line 1039
    move/from16 v13, v23

    .line 1040
    .line 1041
    goto/16 :goto_7

    .line 1042
    .line 1043
    :cond_36
    :goto_28
    return-void
.end method

.method public checkSizeConstraints(Landroid/view/View;I)V
    .locals 6

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 6
    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    .line 16
    .line 17
    const/4 v4, 0x1

    .line 18
    if-ge v1, v3, :cond_0

    .line 19
    .line 20
    :goto_0
    move v1, v3

    .line 21
    move v3, v4

    .line 22
    goto :goto_1

    .line 23
    :cond_0
    iget v3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    .line 24
    .line 25
    if-le v1, v3, :cond_1

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_1
    const/4 v3, 0x0

    .line 29
    :goto_1
    iget v5, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    .line 30
    .line 31
    if-ge v2, v5, :cond_2

    .line 32
    .line 33
    move v2, v5

    .line 34
    goto :goto_2

    .line 35
    :cond_2
    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    .line 36
    .line 37
    if-le v2, v0, :cond_3

    .line 38
    .line 39
    move v2, v0

    .line 40
    goto :goto_2

    .line 41
    :cond_3
    move v4, v3

    .line 42
    :goto_2
    if-eqz v4, :cond_4

    .line 43
    .line 44
    const/high16 v0, 0x40000000    # 2.0f

    .line 45
    .line 46
    invoke-static {v1, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    invoke-static {v2, v0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-virtual {p1, v1, v0}, Landroid/view/View;->measure(II)V

    .line 55
    .line 56
    .line 57
    invoke-virtual {p0, p2, v1, v0, p1}, Lcom/fsck/k9/mailstore/LocalStore$7;->updateMeasureCache(IIILandroid/view/View;)V

    .line 58
    .line 59
    .line 60
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 61
    .line 62
    check-cast p0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 63
    .line 64
    invoke-virtual {p0, p1, p2}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    .line 65
    .line 66
    .line 67
    :cond_4
    return-void
.end method

.method public clearFlexLines(ILjava/util/List;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    aget v0, v0, p1

    .line 6
    .line 7
    const/4 v1, -0x1

    .line 8
    if-ne v0, v1, :cond_0

    .line 9
    .line 10
    const/4 v0, 0x0

    .line 11
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 12
    .line 13
    .line 14
    move-result v2

    .line 15
    if-le v2, v0, :cond_1

    .line 16
    .line 17
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    invoke-interface {p2, v0, v2}, Ljava/util/List;->subList(II)Ljava/util/List;

    .line 22
    .line 23
    .line 24
    move-result-object p2

    .line 25
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 26
    .line 27
    .line 28
    :cond_1
    iget-object p2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast p2, [I

    .line 31
    .line 32
    array-length v0, p2

    .line 33
    add-int/lit8 v0, v0, -0x1

    .line 34
    .line 35
    if-le p1, v0, :cond_2

    .line 36
    .line 37
    invoke-static {p2, v1}, Ljava/util/Arrays;->fill([II)V

    .line 38
    .line 39
    .line 40
    goto :goto_0

    .line 41
    :cond_2
    invoke-static {p2, p1, v0, v1}, Ljava/util/Arrays;->fill([IIII)V

    .line 42
    .line 43
    .line 44
    :goto_0
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 45
    .line 46
    check-cast p0, [J

    .line 47
    .line 48
    array-length p2, p0

    .line 49
    add-int/lit8 p2, p2, -0x1

    .line 50
    .line 51
    const-wide/16 v0, 0x0

    .line 52
    .line 53
    if-le p1, p2, :cond_3

    .line 54
    .line 55
    invoke-static {p0, v0, v1}, Ljava/util/Arrays;->fill([JJ)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_3
    invoke-static {p0, p1, p2, v0, v1}, Ljava/util/Arrays;->fill([JIIJ)V

    .line 60
    .line 61
    .line 62
    return-void
.end method

.method public copyMessages(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
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
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 11
    .line 12
    const-string p1, "not supported"

    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method public create(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Ljava/util/Map;Ljava/util/Map;)Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;
    .locals 9

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance v0, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;

    .line 11
    .line 12
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v2, v1

    .line 15
    check-cast v2, Landroidx/camera/camera2/pipe/core/Threads;

    .line 16
    .line 17
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;

    .line 20
    .line 21
    iget v3, v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->defaultTemplate:I

    .line 22
    .line 23
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 24
    .line 25
    move-object v6, v4

    .line 26
    check-cast v6, Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;

    .line 27
    .line 28
    iget-object v4, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 29
    .line 30
    move-object v7, v4

    .line 31
    check-cast v7, Landroidx/camera/camera2/pipe/StrictMode;

    .line 32
    .line 33
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 34
    .line 35
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;

    .line 36
    .line 37
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 38
    .line 39
    .line 40
    iget-object v4, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->strictMode:Landroidx/camera/camera2/pipe/StrictMode;

    .line 41
    .line 42
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 43
    .line 44
    .line 45
    iget-object v4, v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->flags:Landroidx/camera/camera2/pipe/CameraGraph$Flags;

    .line 46
    .line 47
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    sget-object v4, Landroidx/camera/camera2/pipe/CameraMetadata;->Companion:Landroidx/camera/camera2/pipe/CameraMetadata$Companion;

    .line 51
    .line 52
    iget-object p0, p0, Landroidx/camera/camera2/pipe/compat/Camera2Quirks;->metadataProvider:Landroidx/camera/camera2/pipe/compat/Camera2MetadataProvider;

    .line 53
    .line 54
    iget-object v1, v1, Landroidx/camera/camera2/pipe/CameraGraph$Config;->camera:Ljava/lang/String;

    .line 55
    .line 56
    check-cast p0, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;

    .line 57
    .line 58
    invoke-virtual {p0, v1}, Landroidx/camera/camera2/pipe/compat/Camera2MetadataCache;->awaitCameraMetadata-EfqyGwQ(Ljava/lang/String;)Landroidx/camera/camera2/pipe/CameraMetadata;

    .line 59
    .line 60
    .line 61
    move-result-object p0

    .line 62
    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 63
    .line 64
    .line 65
    invoke-static {p0}, Landroidx/camera/camera2/pipe/CameraMetadata$Companion;->isHardwareLevelLegacy(Landroidx/camera/camera2/pipe/CameraMetadata;)Z

    .line 66
    .line 67
    .line 68
    move-result v8

    .line 69
    move-object v1, p1

    .line 70
    move-object v4, p2

    .line 71
    move-object v5, p3

    .line 72
    invoke-direct/range {v0 .. v8}, Landroidx/camera/camera2/pipe/compat/Camera2CaptureSequenceProcessor;-><init>(Landroidx/camera/camera2/pipe/compat/CameraCaptureSessionWrapper;Landroidx/camera/camera2/pipe/core/Threads;ILjava/util/Map;Ljava/util/Map;Landroidx/camera/camera2/pipe/graph/StreamGraphImpl;Landroidx/camera/camera2/pipe/StrictMode;Z)V

    .line 73
    .line 74
    .line 75
    return-object v0
.end method

.method public createAndSendSurfaceOutput(Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/impl/CameraInternal;Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge;Ljava/util/Map$Entry;)V
    .locals 10

    .line 1
    invoke-interface {p5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    move-object v2, v0

    .line 6
    check-cast v2, Landroidx/camera/core/processing/SurfaceEdge;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/StringBuilder;

    .line 9
    .line 10
    const-string v1, "     -> outputEdge = "

    .line 11
    .line 12
    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    .line 20
    .line 21
    move-result-object v0

    .line 22
    const-string v1, "DualSurfaceProcessorNode"

    .line 23
    .line 24
    invoke-static {v1, v0}, Landroidx/datastore/preferences/protobuf/Utf8$SafeProcessor;->d(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    .line 26
    .line 27
    iget-object v0, p3, Landroidx/camera/core/processing/SurfaceEdge;->mStreamSpec:Landroidx/camera/core/impl/AutoValue_StreamSpec;

    .line 28
    .line 29
    iget-object v4, v0, Landroidx/camera/core/impl/AutoValue_StreamSpec;->resolution:Landroid/util/Size;

    .line 30
    .line 31
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 32
    .line 33
    .line 34
    move-result-object v0

    .line 35
    check-cast v0, Landroidx/camera/core/processing/concurrent/AutoValue_DualOutConfig;

    .line 36
    .line 37
    iget-object v0, v0, Landroidx/camera/core/processing/concurrent/AutoValue_DualOutConfig;->primaryOutConfig:Landroidx/camera/core/processing/util/AutoValue_OutConfig;

    .line 38
    .line 39
    iget-object v5, v0, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getCropRect:Landroid/graphics/Rect;

    .line 40
    .line 41
    iget-boolean p3, p3, Landroidx/camera/core/processing/SurfaceEdge;->mHasCameraTransform:Z

    .line 42
    .line 43
    const/4 v0, 0x0

    .line 44
    if-eqz p3, :cond_0

    .line 45
    .line 46
    move-object v6, p1

    .line 47
    goto :goto_0

    .line 48
    :cond_0
    move-object v6, v0

    .line 49
    :goto_0
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 50
    .line 51
    .line 52
    move-result-object p1

    .line 53
    check-cast p1, Landroidx/camera/core/processing/concurrent/AutoValue_DualOutConfig;

    .line 54
    .line 55
    iget-object p1, p1, Landroidx/camera/core/processing/concurrent/AutoValue_DualOutConfig;->primaryOutConfig:Landroidx/camera/core/processing/util/AutoValue_OutConfig;

    .line 56
    .line 57
    iget v7, p1, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getRotationDegrees:I

    .line 58
    .line 59
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    move-result-object p1

    .line 63
    check-cast p1, Landroidx/camera/core/processing/concurrent/AutoValue_DualOutConfig;

    .line 64
    .line 65
    iget-object p1, p1, Landroidx/camera/core/processing/concurrent/AutoValue_DualOutConfig;->primaryOutConfig:Landroidx/camera/core/processing/util/AutoValue_OutConfig;

    .line 66
    .line 67
    iget-boolean v8, p1, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->isMirroring:Z

    .line 68
    .line 69
    new-instance v3, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;

    .line 70
    .line 71
    invoke-direct/range {v3 .. v8}, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;-><init>(Landroid/util/Size;Landroid/graphics/Rect;Landroidx/camera/core/impl/CameraInternal;IZ)V

    .line 72
    .line 73
    .line 74
    iget-object p1, p4, Landroidx/camera/core/processing/SurfaceEdge;->mStreamSpec:Landroidx/camera/core/impl/AutoValue_StreamSpec;

    .line 75
    .line 76
    iget-object v5, p1, Landroidx/camera/core/impl/AutoValue_StreamSpec;->resolution:Landroid/util/Size;

    .line 77
    .line 78
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 79
    .line 80
    .line 81
    move-result-object p1

    .line 82
    check-cast p1, Landroidx/camera/core/processing/concurrent/AutoValue_DualOutConfig;

    .line 83
    .line 84
    iget-object p1, p1, Landroidx/camera/core/processing/concurrent/AutoValue_DualOutConfig;->secondaryOutConfig:Landroidx/camera/core/processing/util/AutoValue_OutConfig;

    .line 85
    .line 86
    iget-object v6, p1, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getCropRect:Landroid/graphics/Rect;

    .line 87
    .line 88
    iget-boolean p1, p4, Landroidx/camera/core/processing/SurfaceEdge;->mHasCameraTransform:Z

    .line 89
    .line 90
    if-eqz p1, :cond_1

    .line 91
    .line 92
    move-object v7, p2

    .line 93
    goto :goto_1

    .line 94
    :cond_1
    move-object v7, v0

    .line 95
    :goto_1
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 96
    .line 97
    .line 98
    move-result-object p1

    .line 99
    check-cast p1, Landroidx/camera/core/processing/concurrent/AutoValue_DualOutConfig;

    .line 100
    .line 101
    iget-object p1, p1, Landroidx/camera/core/processing/concurrent/AutoValue_DualOutConfig;->secondaryOutConfig:Landroidx/camera/core/processing/util/AutoValue_OutConfig;

    .line 102
    .line 103
    iget v8, p1, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getRotationDegrees:I

    .line 104
    .line 105
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 106
    .line 107
    .line 108
    move-result-object p1

    .line 109
    check-cast p1, Landroidx/camera/core/processing/concurrent/AutoValue_DualOutConfig;

    .line 110
    .line 111
    iget-object p1, p1, Landroidx/camera/core/processing/concurrent/AutoValue_DualOutConfig;->secondaryOutConfig:Landroidx/camera/core/processing/util/AutoValue_OutConfig;

    .line 112
    .line 113
    iget-boolean v9, p1, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->isMirroring:Z

    .line 114
    .line 115
    new-instance v4, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;

    .line 116
    .line 117
    invoke-direct/range {v4 .. v9}, Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;-><init>(Landroid/util/Size;Landroid/graphics/Rect;Landroidx/camera/core/impl/CameraInternal;IZ)V

    .line 118
    .line 119
    .line 120
    invoke-interface {p5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    .line 121
    .line 122
    .line 123
    move-result-object p1

    .line 124
    check-cast p1, Landroidx/camera/core/processing/concurrent/AutoValue_DualOutConfig;

    .line 125
    .line 126
    iget-object p1, p1, Landroidx/camera/core/processing/concurrent/AutoValue_DualOutConfig;->primaryOutConfig:Landroidx/camera/core/processing/util/AutoValue_OutConfig;

    .line 127
    .line 128
    iget p1, p1, Landroidx/camera/core/processing/util/AutoValue_OutConfig;->getFormat:I

    .line 129
    .line 130
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 131
    .line 132
    .line 133
    invoke-static {}, Lorg/jsoup/helper/Validate;->checkMainThread()V

    .line 134
    .line 135
    .line 136
    invoke-virtual {v2}, Landroidx/camera/core/processing/SurfaceEdge;->checkNotClosed()V

    .line 137
    .line 138
    .line 139
    iget-boolean p2, v2, Landroidx/camera/core/processing/SurfaceEdge;->mHasConsumer:Z

    .line 140
    .line 141
    const/4 p3, 0x1

    .line 142
    xor-int/2addr p2, p3

    .line 143
    const-string p4, "Consumer can only be linked once."

    .line 144
    .line 145
    invoke-static {p4, p2}, Landroidx/room/util/RelationUtil;->checkState(Ljava/lang/String;Z)V

    .line 146
    .line 147
    .line 148
    iput-boolean p3, v2, Landroidx/camera/core/processing/SurfaceEdge;->mHasConsumer:Z

    .line 149
    .line 150
    move-object v5, v3

    .line 151
    iget-object v3, v2, Landroidx/camera/core/processing/SurfaceEdge;->mSettableSurface:Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;

    .line 152
    .line 153
    invoke-virtual {v3}, Landroidx/camera/core/impl/DeferrableSurface;->getSurface()Lcom/google/common/util/concurrent/ListenableFuture;

    .line 154
    .line 155
    .line 156
    move-result-object p2

    .line 157
    new-instance v1, Landroidx/camera/core/processing/SurfaceEdge$$ExternalSyntheticLambda3;

    .line 158
    .line 159
    move-object v6, v4

    .line 160
    move v4, p1

    .line 161
    invoke-direct/range {v1 .. v6}, Landroidx/camera/core/processing/SurfaceEdge$$ExternalSyntheticLambda3;-><init>(Landroidx/camera/core/processing/SurfaceEdge;Landroidx/camera/core/processing/SurfaceEdge$SettableSurface;ILandroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;Landroidx/camera/core/AutoValue_SurfaceOutput_CameraInputInfo;)V

    .line 162
    .line 163
    .line 164
    invoke-static {}, Lorg/slf4j/helpers/Util;->mainThreadExecutor()Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 165
    .line 166
    .line 167
    move-result-object p1

    .line 168
    invoke-static {p2, v1, p1}, Landroidx/camera/core/impl/utils/futures/Futures;->transformAsync(Lcom/google/common/util/concurrent/ListenableFuture;Landroidx/camera/core/impl/utils/futures/AsyncFunction;Ljava/util/concurrent/Executor;)Landroidx/camera/core/impl/utils/futures/ChainingListenableFuture;

    .line 169
    .line 170
    .line 171
    move-result-object p1

    .line 172
    new-instance p2, Landroidx/cardview/widget/CardView$1;

    .line 173
    .line 174
    const/16 p4, 0x11

    .line 175
    .line 176
    invoke-direct {p2, p4, p0, v2}, Landroidx/cardview/widget/CardView$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 177
    .line 178
    .line 179
    invoke-static {}, Lorg/slf4j/helpers/Util;->mainThreadExecutor()Landroidx/camera/core/impl/utils/executor/HandlerScheduledExecutorService;

    .line 180
    .line 181
    .line 182
    move-result-object p0

    .line 183
    new-instance p4, Landroidx/core/app/ActivityRecreator$1;

    .line 184
    .line 185
    invoke-direct {p4, p3, p1, p2}, Landroidx/core/app/ActivityRecreator$1;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 186
    .line 187
    .line 188
    invoke-virtual {p1, p4, p0}, Landroidx/camera/core/impl/utils/futures/FutureChain;->addListener(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 189
    .line 190
    .line 191
    return-void
.end method

.method public createPusher(Lcom/fsck/k9/mailstore/LocalStore$7;)Lcom/fsck/k9/backend/imap/ImapBackendPusher;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    const-string p1, "not implemented"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public createTaskStackBuilder()Landroidx/core/app/TaskStackBuilder;
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/content/Intent;

    .line 8
    .line 9
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v2, Landroidx/navigation/NavGraph;

    .line 12
    .line 13
    const/4 v3, 0x0

    .line 14
    if-eqz v2, :cond_8

    .line 15
    .line 16
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result v4

    .line 20
    if-nez v4, :cond_7

    .line 21
    .line 22
    new-instance v4, Ljava/util/ArrayList;

    .line 23
    .line 24
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 25
    .line 26
    .line 27
    new-instance v5, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 30
    .line 31
    .line 32
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 33
    .line 34
    .line 35
    move-result-object v0

    .line 36
    move-object v6, v3

    .line 37
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 38
    .line 39
    .line 40
    move-result v7

    .line 41
    const/4 v8, 0x0

    .line 42
    if-eqz v7, :cond_2

    .line 43
    .line 44
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 45
    .line 46
    .line 47
    move-result-object v7

    .line 48
    check-cast v7, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;

    .line 49
    .line 50
    iget v9, v7, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;->destinationId:I

    .line 51
    .line 52
    iget-object v7, v7, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;->arguments:Landroid/os/Bundle;

    .line 53
    .line 54
    invoke-virtual {p0, v9}, Lcom/fsck/k9/mailstore/LocalStore$7;->findDestination(I)Landroidx/navigation/NavDestination;

    .line 55
    .line 56
    .line 57
    move-result-object v10

    .line 58
    if-eqz v10, :cond_1

    .line 59
    .line 60
    invoke-virtual {v10, v6}, Landroidx/navigation/NavDestination;->buildDeepLinkIds(Landroidx/navigation/NavDestination;)[I

    .line 61
    .line 62
    .line 63
    move-result-object v6

    .line 64
    array-length v9, v6

    .line 65
    :goto_1
    if-ge v8, v9, :cond_0

    .line 66
    .line 67
    aget v11, v6, v8

    .line 68
    .line 69
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 70
    .line 71
    .line 72
    move-result-object v11

    .line 73
    invoke-virtual {v4, v11}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    invoke-virtual {v5, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 77
    .line 78
    .line 79
    add-int/lit8 v8, v8, 0x1

    .line 80
    .line 81
    goto :goto_1

    .line 82
    :cond_0
    move-object v6, v10

    .line 83
    goto :goto_0

    .line 84
    :cond_1
    sget v0, Landroidx/navigation/NavDestination;->$r8$clinit:I

    .line 85
    .line 86
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 87
    .line 88
    check-cast p0, Landroidx/navigation/internal/NavContext;

    .line 89
    .line 90
    invoke-static {p0, v9}, Landroidx/work/OperationKt;->getDisplayName(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    .line 91
    .line 92
    .line 93
    move-result-object p0

    .line 94
    const-string v0, "Navigation destination "

    .line 95
    .line 96
    const-string v1, " cannot be found in the navigation graph "

    .line 97
    .line 98
    invoke-static {v0, p0, v1, v2}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m$1(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 99
    .line 100
    .line 101
    return-object v3

    .line 102
    :cond_2
    invoke-static {v4}, Lkotlin/collections/CollectionsKt;->toIntArray(Ljava/util/List;)[I

    .line 103
    .line 104
    .line 105
    move-result-object v0

    .line 106
    const-string v2, "android-support-nav:controller:deepLinkIds"

    .line 107
    .line 108
    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[I)Landroid/content/Intent;

    .line 109
    .line 110
    .line 111
    const-string v0, "android-support-nav:controller:deepLinkArgs"

    .line 112
    .line 113
    invoke-virtual {v1, v0, v5}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    .line 114
    .line 115
    .line 116
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 117
    .line 118
    check-cast p0, Landroid/content/Context;

    .line 119
    .line 120
    new-instance v0, Landroidx/core/app/TaskStackBuilder;

    .line 121
    .line 122
    invoke-direct {v0, p0}, Landroidx/core/app/TaskStackBuilder;-><init>(Landroid/content/Context;)V

    .line 123
    .line 124
    .line 125
    new-instance p0, Landroid/content/Intent;

    .line 126
    .line 127
    invoke-direct {p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 128
    .line 129
    .line 130
    invoke-virtual {p0}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    .line 131
    .line 132
    .line 133
    move-result-object v2

    .line 134
    if-nez v2, :cond_3

    .line 135
    .line 136
    iget-object v2, v0, Landroidx/core/app/TaskStackBuilder;->mSourceContext:Landroid/content/Context;

    .line 137
    .line 138
    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    .line 139
    .line 140
    .line 141
    move-result-object v2

    .line 142
    invoke-virtual {p0, v2}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;

    .line 143
    .line 144
    .line 145
    move-result-object v2

    .line 146
    :cond_3
    if-eqz v2, :cond_4

    .line 147
    .line 148
    invoke-virtual {v0, v2}, Landroidx/core/app/TaskStackBuilder;->addParentStack(Landroid/content/ComponentName;)V

    .line 149
    .line 150
    .line 151
    :cond_4
    iget-object v2, v0, Landroidx/core/app/TaskStackBuilder;->mIntents:Ljava/util/ArrayList;

    .line 152
    .line 153
    invoke-virtual {v2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 154
    .line 155
    .line 156
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    .line 157
    .line 158
    .line 159
    move-result p0

    .line 160
    :goto_2
    if-ge v8, p0, :cond_6

    .line 161
    .line 162
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 163
    .line 164
    .line 165
    move-result-object v3

    .line 166
    check-cast v3, Landroid/content/Intent;

    .line 167
    .line 168
    if-eqz v3, :cond_5

    .line 169
    .line 170
    const-string v4, "android-support-nav:controller:deepLinkIntent"

    .line 171
    .line 172
    invoke-virtual {v3, v4, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 173
    .line 174
    .line 175
    :cond_5
    add-int/lit8 v8, v8, 0x1

    .line 176
    .line 177
    goto :goto_2

    .line 178
    :cond_6
    return-object v0

    .line 179
    :cond_7
    const-string p0, "You must call setDestination() or addDestination() before constructing the deep link"

    .line 180
    .line 181
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 182
    .line 183
    .line 184
    return-object v3

    .line 185
    :cond_8
    const-string p0, "You must call setGraph() before constructing the deep link"

    .line 186
    .line 187
    invoke-static {p0}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 188
    .line 189
    .line 190
    return-object v3
.end method

.method public deleteAllMessages(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    const-string p1, "not supported"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public deleteMessages(Ljava/lang/String;Ljava/util/List;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/fsck/k9/backend/pop3/CommandSetFlag;

    .line 10
    .line 11
    sget-object v0, Lnet/thunderbird/core/common/mail/Flag;->DELETED:Lnet/thunderbird/core/common/mail/Flag;

    .line 12
    .line 13
    const/4 v1, 0x1

    .line 14
    invoke-virtual {p0, p1, p2, v0, v1}, Lcom/fsck/k9/backend/pop3/CommandSetFlag;->setFlag(Ljava/lang/String;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 15
    .line 16
    .line 17
    return-void
.end method

.method public determineMainSize(III)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 6
    .line 7
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v2, [Z

    .line 14
    .line 15
    const/4 v3, 0x0

    .line 16
    const/4 v4, 0x2

    .line 17
    if-nez v2, :cond_0

    .line 18
    .line 19
    const/16 v2, 0xa

    .line 20
    .line 21
    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    .line 22
    .line 23
    .line 24
    move-result v1

    .line 25
    new-array v1, v1, [Z

    .line 26
    .line 27
    iput-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    array-length v5, v2

    .line 31
    if-ge v5, v1, :cond_1

    .line 32
    .line 33
    array-length v2, v2

    .line 34
    mul-int/2addr v2, v4

    .line 35
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    .line 36
    .line 37
    .line 38
    move-result v1

    .line 39
    new-array v1, v1, [Z

    .line 40
    .line 41
    iput-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 42
    .line 43
    goto :goto_0

    .line 44
    :cond_1
    invoke-static {v2, v3}, Ljava/util/Arrays;->fill([ZZ)V

    .line 45
    .line 46
    .line 47
    :goto_0
    iget-object v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 48
    .line 49
    invoke-virtual {v1}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 50
    .line 51
    .line 52
    move-result v1

    .line 53
    if-lt p3, v1, :cond_2

    .line 54
    .line 55
    goto/16 :goto_a

    .line 56
    .line 57
    :cond_2
    iget v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    .line 58
    .line 59
    const/high16 v2, 0x40000000    # 2.0f

    .line 60
    .line 61
    if-eqz v1, :cond_6

    .line 62
    .line 63
    const/4 v5, 0x1

    .line 64
    if-eq v1, v5, :cond_6

    .line 65
    .line 66
    if-eq v1, v4, :cond_4

    .line 67
    .line 68
    const/4 p1, 0x3

    .line 69
    if-ne v1, p1, :cond_3

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_3
    const-string p0, "Invalid flex direction: "

    .line 73
    .line 74
    invoke-static {p0, v1}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 75
    .line 76
    .line 77
    move-result-object p0

    .line 78
    invoke-static {p0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 79
    .line 80
    .line 81
    return-void

    .line 82
    :cond_4
    :goto_1
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 83
    .line 84
    .line 85
    move-result p1

    .line 86
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 87
    .line 88
    .line 89
    move-result p2

    .line 90
    if-ne p1, v2, :cond_5

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_5
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLargestMainSize()I

    .line 94
    .line 95
    .line 96
    move-result p2

    .line 97
    :goto_2
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 98
    .line 99
    .line 100
    move-result p1

    .line 101
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 102
    .line 103
    .line 104
    move-result v1

    .line 105
    :goto_3
    add-int/2addr v1, p1

    .line 106
    goto :goto_6

    .line 107
    :cond_6
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 108
    .line 109
    .line 110
    move-result p2

    .line 111
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 112
    .line 113
    .line 114
    move-result p1

    .line 115
    invoke-virtual {v0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getLargestMainSize()I

    .line 116
    .line 117
    .line 118
    move-result v1

    .line 119
    if-ne p2, v2, :cond_7

    .line 120
    .line 121
    :goto_4
    move p2, p1

    .line 122
    goto :goto_5

    .line 123
    :cond_7
    invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I

    .line 124
    .line 125
    .line 126
    move-result p1

    .line 127
    goto :goto_4

    .line 128
    :goto_5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 129
    .line 130
    .line 131
    move-result p1

    .line 132
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 133
    .line 134
    .line 135
    move-result v1

    .line 136
    goto :goto_3

    .line 137
    :goto_6
    iget-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 138
    .line 139
    check-cast p1, [I

    .line 140
    .line 141
    if-eqz p1, :cond_8

    .line 142
    .line 143
    aget p1, p1, p3

    .line 144
    .line 145
    goto :goto_7

    .line 146
    :cond_8
    move p1, v3

    .line 147
    :goto_7
    iget-object p3, v0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 148
    .line 149
    invoke-interface {p3}, Ljava/util/List;->size()I

    .line 150
    .line 151
    .line 152
    move-result v0

    .line 153
    :goto_8
    if-ge p1, v0, :cond_b

    .line 154
    .line 155
    invoke-interface {p3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 156
    .line 157
    .line 158
    move-result-object v2

    .line 159
    check-cast v2, Lcom/google/android/flexbox/FlexLine;

    .line 160
    .line 161
    iget v4, v2, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 162
    .line 163
    if-ge v4, p2, :cond_9

    .line 164
    .line 165
    iget-boolean v5, v2, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexGrow:Z

    .line 166
    .line 167
    if-eqz v5, :cond_9

    .line 168
    .line 169
    invoke-virtual {p0, v2, p2, v1, v3}, Lcom/fsck/k9/mailstore/LocalStore$7;->expandFlexItems(Lcom/google/android/flexbox/FlexLine;IIZ)V

    .line 170
    .line 171
    .line 172
    goto :goto_9

    .line 173
    :cond_9
    if-le v4, p2, :cond_a

    .line 174
    .line 175
    iget-boolean v4, v2, Lcom/google/android/flexbox/FlexLine;->mAnyItemsHaveFlexShrink:Z

    .line 176
    .line 177
    if-eqz v4, :cond_a

    .line 178
    .line 179
    invoke-virtual {p0, v2, p2, v1, v3}, Lcom/fsck/k9/mailstore/LocalStore$7;->shrinkFlexItems(Lcom/google/android/flexbox/FlexLine;IIZ)V

    .line 180
    .line 181
    .line 182
    :cond_a
    :goto_9
    add-int/lit8 p1, p1, 0x1

    .line 183
    .line 184
    goto :goto_8

    .line 185
    :cond_b
    :goto_a
    return-void
.end method

.method public doDbWork(Landroid/database/sqlite/SQLiteDatabase;)Ljava/lang/Object;
    .locals 8

    .line 1
    const-string v0, " LIMIT 10"

    .line 2
    .line 3
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 4
    .line 5
    check-cast v1, Ljava/util/ArrayList;

    .line 6
    .line 7
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v2, Lcom/fsck/k9/mailstore/LocalFolder;

    .line 10
    .line 11
    iget-object v3, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v3, Lcom/fsck/k9/mailstore/LocalStore;

    .line 14
    .line 15
    iget-object v4, v3, Lcom/fsck/k9/mailstore/LocalStore;->generalSettingsManager:Lnet/thunderbird/core/preference/GeneralSettingsManager;

    .line 16
    .line 17
    iget-object v5, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 18
    .line 19
    check-cast v5, [Ljava/lang/String;

    .line 20
    .line 21
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, Ljava/lang/String;

    .line 24
    .line 25
    const/4 v6, 0x0

    .line 26
    :try_start_0
    invoke-virtual {p0, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 27
    .line 28
    .line 29
    move-result-object v0

    .line 30
    invoke-virtual {p1, v0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 31
    .line 32
    .line 33
    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 34
    :goto_0
    :try_start_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 35
    .line 36
    .line 37
    move-result v7

    .line 38
    if-eqz v7, :cond_0

    .line 39
    .line 40
    new-instance v7, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 41
    .line 42
    invoke-direct {v7, v3, v6, v2, v4}, Lcom/fsck/k9/mailstore/LocalMessage;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalFolder;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 43
    .line 44
    .line 45
    invoke-virtual {v7, v0}, Lcom/fsck/k9/mailstore/LocalMessage;->populateFromGetMessageCursor(Landroid/database/Cursor;)V

    .line 46
    .line 47
    .line 48
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    .line 50
    .line 51
    goto :goto_0

    .line 52
    :catchall_0
    move-exception p0

    .line 53
    move-object v6, v0

    .line 54
    goto :goto_3

    .line 55
    :catch_0
    move-exception p0

    .line 56
    goto :goto_2

    .line 57
    :cond_0
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 58
    .line 59
    .line 60
    new-instance v7, Ljava/lang/StringBuilder;

    .line 61
    .line 62
    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    .line 63
    .line 64
    .line 65
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 66
    .line 67
    .line 68
    const-string p0, " LIMIT -1 OFFSET 10"

    .line 69
    .line 70
    invoke-virtual {v7, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 71
    .line 72
    .line 73
    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 74
    .line 75
    .line 76
    move-result-object p0

    .line 77
    invoke-virtual {p1, p0, v5}, Landroid/database/sqlite/SQLiteDatabase;->rawQuery(Ljava/lang/String;[Ljava/lang/String;)Landroid/database/Cursor;

    .line 78
    .line 79
    .line 80
    move-result-object v0

    .line 81
    :goto_1
    invoke-interface {v0}, Landroid/database/Cursor;->moveToNext()Z

    .line 82
    .line 83
    .line 84
    move-result p0

    .line 85
    if-eqz p0, :cond_1

    .line 86
    .line 87
    new-instance p0, Lcom/fsck/k9/mailstore/LocalMessage;

    .line 88
    .line 89
    invoke-direct {p0, v3, v6, v2, v4}, Lcom/fsck/k9/mailstore/LocalMessage;-><init>(Lcom/fsck/k9/mailstore/LocalStore;Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalFolder;Lnet/thunderbird/core/preference/GeneralSettingsManager;)V

    .line 90
    .line 91
    .line 92
    invoke-virtual {p0, v0}, Lcom/fsck/k9/mailstore/LocalMessage;->populateFromGetMessageCursor(Landroid/database/Cursor;)V

    .line 93
    .line 94
    .line 95
    invoke-virtual {v1, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 96
    .line 97
    .line 98
    goto :goto_1

    .line 99
    :cond_1
    sget-object p0, Lcom/fsck/k9/helper/Utility;->RESPONSE_PATTERN:Ljava/util/regex/Pattern;

    .line 100
    .line 101
    invoke-interface {v0}, Landroid/database/Cursor;->close()V

    .line 102
    .line 103
    .line 104
    return-object v6

    .line 105
    :catchall_1
    move-exception p0

    .line 106
    goto :goto_3

    .line 107
    :catch_1
    move-exception p0

    .line 108
    move-object v0, v6

    .line 109
    :goto_2
    :try_start_2
    const-string p1, "Got an exception"

    .line 110
    .line 111
    const/4 v1, 0x0

    .line 112
    new-array v1, v1, [Ljava/lang/Object;

    .line 113
    .line 114
    invoke-static {p0, p1, v1}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 115
    .line 116
    .line 117
    invoke-static {v0}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 118
    .line 119
    .line 120
    return-object v6

    .line 121
    :goto_3
    invoke-static {v6}, Lcom/fsck/k9/helper/Utility;->closeQuietly(Landroid/database/Cursor;)V

    .line 122
    .line 123
    .line 124
    throw p0
.end method

.method public downloadAttachment(Lcom/fsck/k9/mailstore/LocalPart;Ljava/lang/Runnable;)V
    .locals 8

    .line 1
    invoke-interface {p1}, Lcom/fsck/k9/mailstore/LocalPart;->getAccountUuid()Ljava/lang/String;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    const-class v1, Lcom/fsck/k9/Preferences;

    .line 6
    .line 7
    invoke-static {v1}, Lkotlin/io/CloseableKt;->get$default(Ljava/lang/Class;)Ljava/lang/Object;

    .line 8
    .line 9
    .line 10
    move-result-object v1

    .line 11
    check-cast v1, Lcom/fsck/k9/Preferences;

    .line 12
    .line 13
    invoke-virtual {v1, v0}, Lcom/fsck/k9/Preferences;->getAccount(Ljava/lang/String;)Lnet/thunderbird/core/android/account/LegacyAccountDto;

    .line 14
    .line 15
    .line 16
    move-result-object v5

    .line 17
    invoke-interface {p1}, Lcom/fsck/k9/mailstore/LocalPart;->getMessage()Lcom/fsck/k9/mailstore/LocalMessage;

    .line 18
    .line 19
    .line 20
    move-result-object v4

    .line 21
    iget-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p1, Lcom/fsck/k9/ui/messageview/MessageViewFragment;

    .line 24
    .line 25
    const v0, 0x7f090199

    .line 26
    .line 27
    .line 28
    invoke-virtual {p1, v0}, Lcom/fsck/k9/ui/messageview/MessageViewFragment;->showDialog$3(I)V

    .line 29
    .line 30
    .line 31
    iget-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 32
    .line 33
    move-object v3, p1

    .line 34
    check-cast v3, Lcom/fsck/k9/controller/MessagingController;

    .line 35
    .line 36
    iget-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 37
    .line 38
    check-cast p1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;

    .line 39
    .line 40
    iget-object v6, p1, Lcom/fsck/k9/mailstore/AttachmentViewInfo;->part:Lcom/fsck/k9/mail/Part;

    .line 41
    .line 42
    new-instance v7, Lcom/fsck/k9/controller/MessagingController$8;

    .line 43
    .line 44
    invoke-direct {v7, p0, p2}, Lcom/fsck/k9/controller/MessagingController$8;-><init>(Lcom/fsck/k9/mailstore/LocalStore$7;Ljava/lang/Runnable;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 48
    .line 49
    .line 50
    new-instance v2, Lcom/fsck/k9/controller/MessagingController$4;

    .line 51
    .line 52
    invoke-direct/range {v2 .. v7}, Lcom/fsck/k9/controller/MessagingController$4;-><init>(Lcom/fsck/k9/controller/MessagingController;Lcom/fsck/k9/mailstore/LocalMessage;Lnet/thunderbird/core/android/account/LegacyAccountDto;Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/controller/MessagingController$8;)V

    .line 53
    .line 54
    .line 55
    const-string p0, "loadAttachment"

    .line 56
    .line 57
    invoke-virtual {v3, p0, v2}, Lcom/fsck/k9/controller/MessagingController;->put(Ljava/lang/String;Ljava/lang/Runnable;)V

    .line 58
    .line 59
    .line 60
    return-void
.end method

.method public downloadCompleteMessage(Ljava/lang/String;Ljava/lang/String;)V
    .locals 6

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast p0, Lcom/beetstra/jutf7/Base64Util;

    .line 7
    .line 8
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/beetstra/jutf7/Base64Util;->inverseAlphabet:Ljava/lang/Object;

    .line 12
    .line 13
    check-cast v0, Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .line 14
    .line 15
    invoke-virtual {v0, p1}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/pop3/Pop3Folder;

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    :try_start_0
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->open()V

    .line 20
    .line 21
    .line 22
    iget-object v1, v0, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->uidToMsgMap:Ljava/util/HashMap;

    .line 23
    .line 24
    invoke-virtual {v1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    .line 26
    .line 27
    move-result-object v1

    .line 28
    check-cast v1, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 29
    .line 30
    if-nez v1, :cond_0

    .line 31
    .line 32
    new-instance v1, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 33
    .line 34
    invoke-direct {v1, p2}, Lcom/fsck/k9/mail/store/pop3/Pop3Message;-><init>(Ljava/lang/String;)V

    .line 35
    .line 36
    .line 37
    :cond_0
    invoke-static {v1}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 38
    .line 39
    .line 40
    move-result-object p2

    .line 41
    const/4 v2, 0x2

    .line 42
    new-array v2, v2, [Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 43
    .line 44
    sget-object v3, Lcom/fsck/k9/mail/FetchProfile$Item;->FLAGS:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 45
    .line 46
    const/4 v4, 0x0

    .line 47
    aput-object v3, v2, v4

    .line 48
    .line 49
    sget-object v3, Lcom/fsck/k9/mail/FetchProfile$Item;->BODY:Lcom/fsck/k9/mail/FetchProfile$Item;

    .line 50
    .line 51
    const/4 v5, 0x1

    .line 52
    aput-object v3, v2, v5

    .line 53
    .line 54
    invoke-static {v2}, Landroidx/work/OperationKt;->fetchProfileOf([Lcom/fsck/k9/mail/FetchProfile$Item;)Lcom/fsck/k9/mail/FetchProfile;

    .line 55
    .line 56
    .line 57
    move-result-object v2

    .line 58
    const/4 v3, 0x0

    .line 59
    invoke-virtual {v0, p2, v2, v3, v4}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->fetch(Ljava/util/List;Lcom/fsck/k9/mail/FetchProfile;Lcom/fsck/k9/mail/MessageRetrievalListener;I)V

    .line 60
    .line 61
    .line 62
    iget-object p0, p0, Lcom/beetstra/jutf7/Base64Util;->alphabet:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p0, Lokhttp3/Dispatcher;

    .line 65
    .line 66
    invoke-virtual {p0, p1}, Lokhttp3/Dispatcher;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/K9BackendFolder;

    .line 67
    .line 68
    .line 69
    move-result-object p0

    .line 70
    sget-object p1, Lcom/fsck/k9/mail/MessageDownloadState;->FULL:Lcom/fsck/k9/mail/MessageDownloadState;

    .line 71
    .line 72
    invoke-virtual {p0, v1, p1}, Lcom/fsck/k9/mailstore/K9BackendFolder;->saveMessage(Lcom/fsck/k9/mail/internet/MimeMessage;Lcom/fsck/k9/mail/MessageDownloadState;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 73
    .line 74
    .line 75
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->close()V

    .line 76
    .line 77
    .line 78
    return-void

    .line 79
    :catchall_0
    move-exception p0

    .line 80
    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->close()V

    .line 81
    .line 82
    .line 83
    throw p0
.end method

.method public downloadMessage(Lcom/fsck/k9/backend/api/SyncConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    const-string p1, "not implemented"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public downloadMessageStructure(Ljava/lang/String;Ljava/lang/String;)V
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
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 8
    .line 9
    const-string p1, "not implemented"

    .line 10
    .line 11
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 12
    .line 13
    .line 14
    throw p0
.end method

.method public ensureIndexToFlexLine(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [I

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    new-array p1, p1, [I

    .line 14
    .line 15
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    array-length v1, v0

    .line 19
    if-ge v1, p1, :cond_1

    .line 20
    .line 21
    array-length v0, v0

    .line 22
    mul-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, [I

    .line 31
    .line 32
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public ensureMeasureSpecCache(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [J

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    new-array p1, p1, [J

    .line 14
    .line 15
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    array-length v1, v0

    .line 19
    if-ge v1, p1, :cond_1

    .line 20
    .line 21
    array-length v0, v0

    .line 22
    mul-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, [J

    .line 31
    .line 32
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public ensureMeasuredSizeCache(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [J

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    const/16 v0, 0xa

    .line 8
    .line 9
    invoke-static {p1, v0}, Ljava/lang/Math;->max(II)I

    .line 10
    .line 11
    .line 12
    move-result p1

    .line 13
    new-array p1, p1, [J

    .line 14
    .line 15
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 16
    .line 17
    return-void

    .line 18
    :cond_0
    array-length v1, v0

    .line 19
    if-ge v1, p1, :cond_1

    .line 20
    .line 21
    array-length v0, v0

    .line 22
    mul-int/lit8 v0, v0, 0x2

    .line 23
    .line 24
    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result p1

    .line 28
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 29
    .line 30
    check-cast v0, [J

    .line 31
    .line 32
    invoke-static {v0, p1}, Ljava/util/Arrays;->copyOf([JI)[J

    .line 33
    .line 34
    .line 35
    move-result-object p1

    .line 36
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 37
    .line 38
    :cond_1
    return-void
.end method

.method public expandFlexItems(Lcom/google/android/flexbox/FlexLine;IIZ)V
    .locals 25

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v4, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 10
    .line 11
    iget v5, v1, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 12
    .line 13
    const/4 v6, 0x0

    .line 14
    cmpg-float v7, v5, v6

    .line 15
    .line 16
    if-lez v7, :cond_15

    .line 17
    .line 18
    iget v7, v1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 19
    .line 20
    if-ge v2, v7, :cond_0

    .line 21
    .line 22
    goto/16 :goto_f

    .line 23
    .line 24
    :cond_0
    sub-int v8, v2, v7

    .line 25
    .line 26
    int-to-float v8, v8

    .line 27
    div-float/2addr v8, v5

    .line 28
    iget v5, v1, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 29
    .line 30
    add-int v5, p3, v5

    .line 31
    .line 32
    iput v5, v1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 33
    .line 34
    if-nez p4, :cond_1

    .line 35
    .line 36
    const/high16 v5, -0x80000000

    .line 37
    .line 38
    iput v5, v1, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 39
    .line 40
    :cond_1
    const/4 v5, 0x0

    .line 41
    move v9, v5

    .line 42
    move v10, v9

    .line 43
    move v11, v6

    .line 44
    :goto_0
    iget v12, v1, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 45
    .line 46
    if-ge v5, v12, :cond_14

    .line 47
    .line 48
    iget v12, v1, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 49
    .line 50
    add-int/2addr v12, v5

    .line 51
    invoke-virtual {v4, v12}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v14

    .line 55
    if-eqz v14, :cond_13

    .line 56
    .line 57
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 58
    .line 59
    .line 60
    move-result v15

    .line 61
    move/from16 v16, v6

    .line 62
    .line 63
    const/16 v6, 0x8

    .line 64
    .line 65
    if-ne v15, v6, :cond_2

    .line 66
    .line 67
    :goto_1
    move v15, v8

    .line 68
    move/from16 v24, v9

    .line 69
    .line 70
    goto/16 :goto_d

    .line 71
    .line 72
    :cond_2
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 73
    .line 74
    .line 75
    move-result-object v6

    .line 76
    check-cast v6, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 77
    .line 78
    iget v15, v4, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    .line 79
    .line 80
    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    .line 81
    .line 82
    const/16 v19, 0x20

    .line 83
    .line 84
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    .line 85
    .line 86
    if-eqz v15, :cond_3

    .line 87
    .line 88
    const/4 v13, 0x1

    .line 89
    if-ne v15, v13, :cond_4

    .line 90
    .line 91
    :cond_3
    move v15, v8

    .line 92
    move/from16 v24, v9

    .line 93
    .line 94
    goto/16 :goto_7

    .line 95
    .line 96
    :cond_4
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 97
    .line 98
    .line 99
    move-result v13

    .line 100
    iget-object v15, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 101
    .line 102
    check-cast v15, [J

    .line 103
    .line 104
    if-eqz v15, :cond_5

    .line 105
    .line 106
    aget-wide v22, v15, v12

    .line 107
    .line 108
    move v15, v8

    .line 109
    move/from16 v24, v9

    .line 110
    .line 111
    shr-long v8, v22, v19

    .line 112
    .line 113
    long-to-int v13, v8

    .line 114
    goto :goto_2

    .line 115
    :cond_5
    move v15, v8

    .line 116
    move/from16 v24, v9

    .line 117
    .line 118
    :goto_2
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 119
    .line 120
    .line 121
    move-result v8

    .line 122
    iget-object v9, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 123
    .line 124
    check-cast v9, [J

    .line 125
    .line 126
    if-eqz v9, :cond_6

    .line 127
    .line 128
    aget-wide v8, v9, v12

    .line 129
    .line 130
    long-to-int v8, v8

    .line 131
    :cond_6
    iget-object v9, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 132
    .line 133
    check-cast v9, [Z

    .line 134
    .line 135
    aget-boolean v9, v9, v12

    .line 136
    .line 137
    if-nez v9, :cond_b

    .line 138
    .line 139
    iget v9, v6, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    .line 140
    .line 141
    cmpl-float v19, v9, v16

    .line 142
    .line 143
    if-lez v19, :cond_b

    .line 144
    .line 145
    int-to-float v8, v13

    .line 146
    mul-float/2addr v9, v15

    .line 147
    add-float/2addr v9, v8

    .line 148
    iget v8, v1, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 149
    .line 150
    const/4 v13, 0x1

    .line 151
    sub-int/2addr v8, v13

    .line 152
    if-ne v5, v8, :cond_7

    .line 153
    .line 154
    add-float/2addr v9, v11

    .line 155
    move/from16 v11, v16

    .line 156
    .line 157
    :cond_7
    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    .line 158
    .line 159
    .line 160
    move-result v8

    .line 161
    move/from16 p4, v13

    .line 162
    .line 163
    iget v13, v6, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    .line 164
    .line 165
    if-le v8, v13, :cond_8

    .line 166
    .line 167
    iget-object v8, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 168
    .line 169
    check-cast v8, [Z

    .line 170
    .line 171
    aput-boolean p4, v8, v12

    .line 172
    .line 173
    iget v8, v1, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 174
    .line 175
    iget v9, v6, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    .line 176
    .line 177
    sub-float/2addr v8, v9

    .line 178
    iput v8, v1, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 179
    .line 180
    move v8, v13

    .line 181
    const/4 v9, 0x1

    .line 182
    goto :goto_5

    .line 183
    :cond_8
    int-to-float v13, v8

    .line 184
    sub-float/2addr v9, v13

    .line 185
    add-float/2addr v9, v11

    .line 186
    float-to-double v2, v9

    .line 187
    cmpl-double v11, v2, v20

    .line 188
    .line 189
    if-lez v11, :cond_9

    .line 190
    .line 191
    add-int/lit8 v8, v8, 0x1

    .line 192
    .line 193
    sub-double v2, v2, v20

    .line 194
    .line 195
    :goto_3
    double-to-float v2, v2

    .line 196
    move v11, v2

    .line 197
    :goto_4
    move/from16 v9, v24

    .line 198
    .line 199
    goto :goto_5

    .line 200
    :cond_9
    cmpg-double v11, v2, v17

    .line 201
    .line 202
    if-gez v11, :cond_a

    .line 203
    .line 204
    add-int/lit8 v8, v8, -0x1

    .line 205
    .line 206
    add-double v2, v2, v20

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :cond_a
    move v11, v9

    .line 210
    goto :goto_4

    .line 211
    :goto_5
    iget v2, v1, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    .line 212
    .line 213
    invoke-virtual {v0, v6, v2}, Lcom/fsck/k9/mailstore/LocalStore$7;->getChildWidthMeasureSpecInternal(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;I)I

    .line 214
    .line 215
    .line 216
    move-result v2

    .line 217
    const/high16 v3, 0x40000000    # 2.0f

    .line 218
    .line 219
    invoke-static {v8, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 220
    .line 221
    .line 222
    move-result v3

    .line 223
    invoke-virtual {v14, v2, v3}, Landroid/view/View;->measure(II)V

    .line 224
    .line 225
    .line 226
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 227
    .line 228
    .line 229
    move-result v8

    .line 230
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 231
    .line 232
    .line 233
    move-result v13

    .line 234
    invoke-virtual {v0, v12, v2, v3, v14}, Lcom/fsck/k9/mailstore/LocalStore$7;->updateMeasureCache(IIILandroid/view/View;)V

    .line 235
    .line 236
    .line 237
    invoke-virtual {v4, v14, v12}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    .line 238
    .line 239
    .line 240
    goto :goto_6

    .line 241
    :cond_b
    move/from16 v9, v24

    .line 242
    .line 243
    :goto_6
    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 244
    .line 245
    add-int/2addr v8, v2

    .line 246
    iget v2, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 247
    .line 248
    add-int/2addr v8, v2

    .line 249
    invoke-virtual {v4, v14}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    .line 250
    .line 251
    .line 252
    move-result v2

    .line 253
    add-int/2addr v2, v8

    .line 254
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    .line 255
    .line 256
    .line 257
    move-result v2

    .line 258
    iget v3, v1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 259
    .line 260
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 261
    .line 262
    add-int/2addr v13, v8

    .line 263
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 264
    .line 265
    add-int/2addr v13, v6

    .line 266
    add-int/2addr v13, v3

    .line 267
    iput v13, v1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 268
    .line 269
    goto/16 :goto_c

    .line 270
    .line 271
    :goto_7
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 272
    .line 273
    .line 274
    move-result v2

    .line 275
    iget-object v3, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 276
    .line 277
    check-cast v3, [J

    .line 278
    .line 279
    if-eqz v3, :cond_c

    .line 280
    .line 281
    aget-wide v2, v3, v12

    .line 282
    .line 283
    long-to-int v2, v2

    .line 284
    :cond_c
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 285
    .line 286
    .line 287
    move-result v3

    .line 288
    iget-object v8, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 289
    .line 290
    check-cast v8, [J

    .line 291
    .line 292
    if-eqz v8, :cond_d

    .line 293
    .line 294
    aget-wide v22, v8, v12

    .line 295
    .line 296
    shr-long v8, v22, v19

    .line 297
    .line 298
    long-to-int v3, v8

    .line 299
    :cond_d
    iget-object v8, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 300
    .line 301
    check-cast v8, [Z

    .line 302
    .line 303
    aget-boolean v8, v8, v12

    .line 304
    .line 305
    if-nez v8, :cond_12

    .line 306
    .line 307
    iget v8, v6, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    .line 308
    .line 309
    cmpl-float v9, v8, v16

    .line 310
    .line 311
    if-lez v9, :cond_12

    .line 312
    .line 313
    int-to-float v2, v2

    .line 314
    mul-float/2addr v8, v15

    .line 315
    add-float/2addr v8, v2

    .line 316
    iget v2, v1, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 317
    .line 318
    const/4 v13, 0x1

    .line 319
    sub-int/2addr v2, v13

    .line 320
    if-ne v5, v2, :cond_e

    .line 321
    .line 322
    add-float/2addr v8, v11

    .line 323
    move/from16 v11, v16

    .line 324
    .line 325
    :cond_e
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 326
    .line 327
    .line 328
    move-result v2

    .line 329
    iget v3, v6, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    .line 330
    .line 331
    if-le v2, v3, :cond_f

    .line 332
    .line 333
    iget-object v2, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 334
    .line 335
    check-cast v2, [Z

    .line 336
    .line 337
    aput-boolean v13, v2, v12

    .line 338
    .line 339
    iget v2, v1, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 340
    .line 341
    iget v8, v6, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexGrow:F

    .line 342
    .line 343
    sub-float/2addr v2, v8

    .line 344
    iput v2, v1, Lcom/google/android/flexbox/FlexLine;->mTotalFlexGrow:F

    .line 345
    .line 346
    move v2, v3

    .line 347
    const/4 v9, 0x1

    .line 348
    goto :goto_a

    .line 349
    :cond_f
    int-to-float v3, v2

    .line 350
    sub-float/2addr v8, v3

    .line 351
    add-float/2addr v8, v11

    .line 352
    move/from16 p4, v2

    .line 353
    .line 354
    float-to-double v2, v8

    .line 355
    cmpl-double v9, v2, v20

    .line 356
    .line 357
    if-lez v9, :cond_10

    .line 358
    .line 359
    add-int/lit8 v8, p4, 0x1

    .line 360
    .line 361
    sub-double v2, v2, v20

    .line 362
    .line 363
    :goto_8
    double-to-float v2, v2

    .line 364
    move v11, v2

    .line 365
    move v2, v8

    .line 366
    :goto_9
    move/from16 v9, v24

    .line 367
    .line 368
    goto :goto_a

    .line 369
    :cond_10
    cmpg-double v9, v2, v17

    .line 370
    .line 371
    if-gez v9, :cond_11

    .line 372
    .line 373
    add-int/lit8 v8, p4, -0x1

    .line 374
    .line 375
    add-double v2, v2, v20

    .line 376
    .line 377
    goto :goto_8

    .line 378
    :cond_11
    move/from16 v2, p4

    .line 379
    .line 380
    move v11, v8

    .line 381
    goto :goto_9

    .line 382
    :goto_a
    iget v3, v1, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    .line 383
    .line 384
    invoke-virtual {v0, v6, v3}, Lcom/fsck/k9/mailstore/LocalStore$7;->getChildHeightMeasureSpecInternal(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;I)I

    .line 385
    .line 386
    .line 387
    move-result v3

    .line 388
    const/high16 v8, 0x40000000    # 2.0f

    .line 389
    .line 390
    invoke-static {v2, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 391
    .line 392
    .line 393
    move-result v2

    .line 394
    invoke-virtual {v14, v2, v3}, Landroid/view/View;->measure(II)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 398
    .line 399
    .line 400
    move-result v8

    .line 401
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 402
    .line 403
    .line 404
    move-result v13

    .line 405
    invoke-virtual {v0, v12, v2, v3, v14}, Lcom/fsck/k9/mailstore/LocalStore$7;->updateMeasureCache(IIILandroid/view/View;)V

    .line 406
    .line 407
    .line 408
    invoke-virtual {v4, v14, v12}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    .line 409
    .line 410
    .line 411
    move v2, v8

    .line 412
    move v3, v13

    .line 413
    goto :goto_b

    .line 414
    :cond_12
    move/from16 v9, v24

    .line 415
    .line 416
    :goto_b
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 417
    .line 418
    add-int/2addr v3, v8

    .line 419
    iget v8, v6, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 420
    .line 421
    add-int/2addr v3, v8

    .line 422
    invoke-virtual {v4, v14}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    .line 423
    .line 424
    .line 425
    move-result v8

    .line 426
    add-int/2addr v8, v3

    .line 427
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    .line 428
    .line 429
    .line 430
    move-result v3

    .line 431
    iget v8, v1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 432
    .line 433
    iget v10, v6, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 434
    .line 435
    add-int/2addr v2, v10

    .line 436
    iget v6, v6, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 437
    .line 438
    add-int/2addr v2, v6

    .line 439
    add-int/2addr v2, v8

    .line 440
    iput v2, v1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 441
    .line 442
    move v2, v3

    .line 443
    :goto_c
    iget v3, v1, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 444
    .line 445
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 446
    .line 447
    .line 448
    move-result v3

    .line 449
    iput v3, v1, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 450
    .line 451
    move v10, v2

    .line 452
    goto :goto_e

    .line 453
    :cond_13
    move/from16 v16, v6

    .line 454
    .line 455
    goto/16 :goto_1

    .line 456
    .line 457
    :goto_d
    move/from16 v9, v24

    .line 458
    .line 459
    :goto_e
    add-int/lit8 v5, v5, 0x1

    .line 460
    .line 461
    move/from16 v2, p2

    .line 462
    .line 463
    move v8, v15

    .line 464
    move/from16 v6, v16

    .line 465
    .line 466
    goto/16 :goto_0

    .line 467
    .line 468
    :cond_14
    move/from16 v24, v9

    .line 469
    .line 470
    if-eqz v24, :cond_15

    .line 471
    .line 472
    iget v2, v1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 473
    .line 474
    if-eq v7, v2, :cond_15

    .line 475
    .line 476
    move/from16 v2, p2

    .line 477
    .line 478
    move/from16 v3, p3

    .line 479
    .line 480
    const/4 v13, 0x1

    .line 481
    invoke-virtual {v0, v1, v2, v3, v13}, Lcom/fsck/k9/mailstore/LocalStore$7;->expandFlexItems(Lcom/google/android/flexbox/FlexLine;IIZ)V

    .line 482
    .line 483
    .line 484
    :cond_15
    :goto_f
    return-void
.end method

.method public expunge(Ljava/lang/String;)V
    .locals 0

    .line 1
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 2
    .line 3
    const-string p1, "not supported"

    .line 4
    .line 5
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 6
    .line 7
    .line 8
    throw p0
.end method

.method public fail(Ljava/lang/Throwable;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

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
    iput-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 13
    .line 14
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 15
    .line 16
    check-cast v1, Landroidx/collection/MutableObjectList;

    .line 17
    .line 18
    iget-object v2, v1, Landroidx/collection/MutableObjectList;->content:[Ljava/lang/Object;

    .line 19
    .line 20
    iget v1, v1, Landroidx/collection/MutableObjectList;->_size:I

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
    iget-object p1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 38
    .line 39
    check-cast p1, Landroidx/collection/MutableObjectList;

    .line 40
    .line 41
    invoke-virtual {p1}, Landroidx/collection/MutableObjectList;->clear()V

    .line 42
    .line 43
    .line 44
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

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

.method public fetchPart(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/Part;Lcom/fsck/k9/controller/ProgressBodyFactory;)V
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
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 11
    .line 12
    const-string p1, "not supported"

    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method public findByMessageId(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
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
    const/4 p0, 0x0

    .line 8
    return-object p0
.end method

.method public findDestination(I)Landroidx/navigation/NavDestination;
    .locals 3

    .line 1
    new-instance v0, Lkotlin/collections/ArrayDeque;

    .line 2
    .line 3
    invoke-direct {v0}, Lkotlin/collections/ArrayDeque;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast p0, Landroidx/navigation/NavGraph;

    .line 9
    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 11
    .line 12
    .line 13
    invoke-virtual {v0, p0}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 14
    .line 15
    .line 16
    :cond_0
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 17
    .line 18
    .line 19
    move-result p0

    .line 20
    if-nez p0, :cond_2

    .line 21
    .line 22
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->removeFirst()Ljava/lang/Object;

    .line 23
    .line 24
    .line 25
    move-result-object p0

    .line 26
    check-cast p0, Landroidx/navigation/NavDestination;

    .line 27
    .line 28
    iget-object v1, p0, Landroidx/navigation/NavDestination;->impl:Landroidx/navigation/internal/NavDestinationImpl;

    .line 29
    .line 30
    iget v1, v1, Landroidx/navigation/internal/NavDestinationImpl;->id:I

    .line 31
    .line 32
    if-ne v1, p1, :cond_1

    .line 33
    .line 34
    return-object p0

    .line 35
    :cond_1
    instance-of v1, p0, Landroidx/navigation/NavGraph;

    .line 36
    .line 37
    if-eqz v1, :cond_0

    .line 38
    .line 39
    check-cast p0, Landroidx/navigation/NavGraph;

    .line 40
    .line 41
    invoke-virtual {p0}, Landroidx/navigation/NavGraph;->iterator()Ljava/util/Iterator;

    .line 42
    .line 43
    .line 44
    move-result-object p0

    .line 45
    :goto_0
    move-object v1, p0

    .line 46
    check-cast v1, Landroidx/navigation/internal/NavGraphImpl$iterator$1;

    .line 47
    .line 48
    invoke-virtual {v1}, Landroidx/navigation/internal/NavGraphImpl$iterator$1;->hasNext()Z

    .line 49
    .line 50
    .line 51
    move-result v2

    .line 52
    if-eqz v2, :cond_0

    .line 53
    .line 54
    invoke-virtual {v1}, Landroidx/navigation/internal/NavGraphImpl$iterator$1;->next()Ljava/lang/Object;

    .line 55
    .line 56
    .line 57
    move-result-object v1

    .line 58
    check-cast v1, Landroidx/navigation/NavDestination;

    .line 59
    .line 60
    invoke-virtual {v0, v1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 61
    .line 62
    .line 63
    goto :goto_0

    .line 64
    :cond_2
    const/4 p0, 0x0

    .line 65
    return-object p0
.end method

.method public flushAndDispatchAwaiters(Lkotlin/jvm/functions/Function1;)V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 2
    .line 3
    monitor-enter v0

    .line 4
    :try_start_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v1, Landroidx/collection/MutableObjectList;

    .line 7
    .line 8
    iget-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 9
    .line 10
    check-cast v2, Landroidx/collection/MutableObjectList;

    .line 11
    .line 12
    iput-object v2, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 13
    .line 14
    iput-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 15
    .line 16
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

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
    iget p0, v1, Landroidx/collection/MutableObjectList;->_size:I

    .line 41
    .line 42
    const/4 v2, 0x0

    .line 43
    :goto_0
    if-ge v2, p0, :cond_1

    .line 44
    .line 45
    invoke-virtual {v1, v2}, Landroidx/collection/MutableObjectList;->get(I)Ljava/lang/Object;

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

.method public getChildHeightMeasureSpecInternal(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;I)I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingTop()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingBottom()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 15
    .line 16
    add-int/2addr v1, v0

    .line 17
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 18
    .line 19
    add-int/2addr v1, v0

    .line 20
    add-int/2addr v1, p2

    .line 21
    iget p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    .line 22
    .line 23
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeight:I

    .line 24
    .line 25
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mHeightMode:I

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollVertically()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-static {p0, v0, v2, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(ZIIII)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    .line 40
    .line 41
    if-le p2, v0, :cond_0

    .line 42
    .line 43
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    invoke-static {v0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    :cond_0
    iget p1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    .line 53
    .line 54
    if-ge p2, p1, :cond_1

    .line 55
    .line 56
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    :cond_1
    return p0
.end method

.method public getChildWidthMeasureSpecInternal(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;I)I
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 4
    .line 5
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingLeft()I

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getPaddingRight()I

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    add-int/2addr v1, v0

    .line 14
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 15
    .line 16
    add-int/2addr v1, v0

    .line 17
    iget v0, p1, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 18
    .line 19
    add-int/2addr v1, v0

    .line 20
    add-int/2addr v1, p2

    .line 21
    iget p2, p1, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    .line 22
    .line 23
    iget v0, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidth:I

    .line 24
    .line 25
    iget v2, p0, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->mWidthMode:I

    .line 26
    .line 27
    invoke-virtual {p0}, Lcom/google/android/flexbox/FlexboxLayoutManager;->canScrollHorizontally()Z

    .line 28
    .line 29
    .line 30
    move-result p0

    .line 31
    invoke-static {p0, v0, v2, v1, p2}, Landroidx/recyclerview/widget/RecyclerView$LayoutManager;->getChildMeasureSpec(ZIIII)I

    .line 32
    .line 33
    .line 34
    move-result p0

    .line 35
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getSize(I)I

    .line 36
    .line 37
    .line 38
    move-result p2

    .line 39
    iget v0, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    .line 40
    .line 41
    if-le p2, v0, :cond_0

    .line 42
    .line 43
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 44
    .line 45
    .line 46
    move-result p0

    .line 47
    invoke-static {v0, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 48
    .line 49
    .line 50
    move-result p0

    .line 51
    return p0

    .line 52
    :cond_0
    iget p1, p1, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    .line 53
    .line 54
    if-ge p2, p1, :cond_1

    .line 55
    .line 56
    invoke-static {p0}, Landroid/view/View$MeasureSpec;->getMode(I)I

    .line 57
    .line 58
    .line 59
    move-result p0

    .line 60
    invoke-static {p1, p0}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 61
    .line 62
    .line 63
    move-result p0

    .line 64
    :cond_1
    return p0
.end method

.method public getDownstreamHorizontal(IZ)F
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

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
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

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
    .locals 17

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p3

    .line 6
    .line 7
    iget-object v3, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v3, Landroid/text/Layout;

    .line 10
    .line 11
    if-nez v2, :cond_0

    .line 12
    .line 13
    invoke-virtual/range {p0 .. p2}, Lcom/fsck/k9/mailstore/LocalStore$7;->getDownstreamHorizontal(IZ)F

    .line 14
    .line 15
    .line 16
    move-result v0

    .line 17
    return v0

    .line 18
    :cond_0
    invoke-static {v3, v1, v2}, Landroidx/compose/ui/text/android/StaticLayoutFactory;->getLineForOffset(Landroid/text/Layout;IZ)I

    .line 19
    .line 20
    .line 21
    move-result v4

    .line 22
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineStart(I)I

    .line 23
    .line 24
    .line 25
    move-result v5

    .line 26
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineEnd(I)I

    .line 27
    .line 28
    .line 29
    move-result v6

    .line 30
    if-eq v1, v5, :cond_1

    .line 31
    .line 32
    if-eq v1, v6, :cond_1

    .line 33
    .line 34
    invoke-virtual/range {p0 .. p2}, Lcom/fsck/k9/mailstore/LocalStore$7;->getDownstreamHorizontal(IZ)F

    .line 35
    .line 36
    .line 37
    move-result v0

    .line 38
    return v0

    .line 39
    :cond_1
    if-eqz v1, :cond_22

    .line 40
    .line 41
    invoke-virtual {v3}, Landroid/text/Layout;->getText()Ljava/lang/CharSequence;

    .line 42
    .line 43
    .line 44
    move-result-object v7

    .line 45
    invoke-interface {v7}, Ljava/lang/CharSequence;->length()I

    .line 46
    .line 47
    .line 48
    move-result v7

    .line 49
    if-ne v1, v7, :cond_2

    .line 50
    .line 51
    goto/16 :goto_11

    .line 52
    .line 53
    :cond_2
    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mailstore/LocalStore$7;->getParagraphForOffset(IZ)I

    .line 54
    .line 55
    .line 56
    move-result v2

    .line 57
    invoke-virtual {v0, v2}, Lcom/fsck/k9/mailstore/LocalStore$7;->getParagraphStart(I)I

    .line 58
    .line 59
    .line 60
    move-result v7

    .line 61
    invoke-virtual {v3, v7}, Landroid/text/Layout;->getLineForOffset(I)I

    .line 62
    .line 63
    .line 64
    move-result v7

    .line 65
    invoke-virtual {v3, v7}, Landroid/text/Layout;->getParagraphDirection(I)I

    .line 66
    .line 67
    .line 68
    move-result v7

    .line 69
    const/4 v8, -0x1

    .line 70
    const/4 v10, 0x1

    .line 71
    if-ne v7, v8, :cond_3

    .line 72
    .line 73
    move v7, v10

    .line 74
    goto :goto_0

    .line 75
    :cond_3
    const/4 v7, 0x0

    .line 76
    :goto_0
    invoke-virtual {v0, v6, v5}, Lcom/fsck/k9/mailstore/LocalStore$7;->lineEndToVisibleEnd(II)I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    invoke-virtual {v0, v2}, Lcom/fsck/k9/mailstore/LocalStore$7;->getParagraphStart(I)I

    .line 81
    .line 82
    .line 83
    move-result v11

    .line 84
    sub-int v12, v5, v11

    .line 85
    .line 86
    sub-int v11, v6, v11

    .line 87
    .line 88
    invoke-virtual {v0, v2}, Lcom/fsck/k9/mailstore/LocalStore$7;->analyzeBidi(I)Ljava/text/Bidi;

    .line 89
    .line 90
    .line 91
    move-result-object v2

    .line 92
    if-eqz v2, :cond_4

    .line 93
    .line 94
    invoke-virtual {v2, v12, v11}, Ljava/text/Bidi;->createLineBidi(II)Ljava/text/Bidi;

    .line 95
    .line 96
    .line 97
    move-result-object v2

    .line 98
    goto :goto_1

    .line 99
    :cond_4
    const/4 v2, 0x0

    .line 100
    :goto_1
    if-eqz v2, :cond_5

    .line 101
    .line 102
    invoke-virtual {v2}, Ljava/text/Bidi;->getRunCount()I

    .line 103
    .line 104
    .line 105
    move-result v11

    .line 106
    if-ne v11, v10, :cond_6

    .line 107
    .line 108
    :cond_5
    const/4 v13, 0x0

    .line 109
    goto/16 :goto_e

    .line 110
    .line 111
    :cond_6
    invoke-virtual {v2}, Ljava/text/Bidi;->getRunCount()I

    .line 112
    .line 113
    .line 114
    move-result v11

    .line 115
    new-array v12, v11, [Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;

    .line 116
    .line 117
    const/4 v13, 0x0

    .line 118
    :goto_2
    if-ge v13, v11, :cond_8

    .line 119
    .line 120
    new-instance v14, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;

    .line 121
    .line 122
    invoke-virtual {v2, v13}, Ljava/text/Bidi;->getRunStart(I)I

    .line 123
    .line 124
    .line 125
    move-result v15

    .line 126
    add-int/2addr v15, v5

    .line 127
    invoke-virtual {v2, v13}, Ljava/text/Bidi;->getRunLimit(I)I

    .line 128
    .line 129
    .line 130
    move-result v16

    .line 131
    add-int v8, v16, v5

    .line 132
    .line 133
    invoke-virtual {v2, v13}, Ljava/text/Bidi;->getRunLevel(I)I

    .line 134
    .line 135
    .line 136
    move-result v16

    .line 137
    rem-int/lit8 v9, v16, 0x2

    .line 138
    .line 139
    if-ne v9, v10, :cond_7

    .line 140
    .line 141
    move v9, v10

    .line 142
    goto :goto_3

    .line 143
    :cond_7
    const/4 v9, 0x0

    .line 144
    :goto_3
    invoke-direct {v14, v15, v8, v9}, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;-><init>(IIZ)V

    .line 145
    .line 146
    .line 147
    aput-object v14, v12, v13

    .line 148
    .line 149
    add-int/lit8 v13, v13, 0x1

    .line 150
    .line 151
    const/4 v8, -0x1

    .line 152
    goto :goto_2

    .line 153
    :cond_8
    invoke-virtual {v2}, Ljava/text/Bidi;->getRunCount()I

    .line 154
    .line 155
    .line 156
    move-result v8

    .line 157
    new-array v9, v8, [B

    .line 158
    .line 159
    const/4 v13, 0x0

    .line 160
    :goto_4
    if-ge v13, v8, :cond_9

    .line 161
    .line 162
    invoke-virtual {v2, v13}, Ljava/text/Bidi;->getRunLevel(I)I

    .line 163
    .line 164
    .line 165
    move-result v14

    .line 166
    int-to-byte v14, v14

    .line 167
    aput-byte v14, v9, v13

    .line 168
    .line 169
    add-int/lit8 v13, v13, 0x1

    .line 170
    .line 171
    goto :goto_4

    .line 172
    :cond_9
    const/4 v13, 0x0

    .line 173
    invoke-static {v9, v13, v12, v13, v11}, Ljava/text/Bidi;->reorderVisually([BI[Ljava/lang/Object;II)V

    .line 174
    .line 175
    .line 176
    if-ne v1, v5, :cond_12

    .line 177
    .line 178
    move v0, v13

    .line 179
    :goto_5
    if-ge v0, v11, :cond_b

    .line 180
    .line 181
    aget-object v2, v12, v0

    .line 182
    .line 183
    iget v2, v2, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->start:I

    .line 184
    .line 185
    if-ne v2, v1, :cond_a

    .line 186
    .line 187
    move v8, v0

    .line 188
    goto :goto_6

    .line 189
    :cond_a
    add-int/lit8 v0, v0, 0x1

    .line 190
    .line 191
    goto :goto_5

    .line 192
    :cond_b
    const/4 v8, -0x1

    .line 193
    :goto_6
    aget-object v0, v12, v8

    .line 194
    .line 195
    if-nez p2, :cond_d

    .line 196
    .line 197
    iget-boolean v0, v0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->isRtl:Z

    .line 198
    .line 199
    if-ne v7, v0, :cond_c

    .line 200
    .line 201
    goto :goto_7

    .line 202
    :cond_c
    move v9, v7

    .line 203
    goto :goto_8

    .line 204
    :cond_d
    :goto_7
    if-nez v7, :cond_e

    .line 205
    .line 206
    move v9, v10

    .line 207
    goto :goto_8

    .line 208
    :cond_e
    move v9, v13

    .line 209
    :goto_8
    if-nez v8, :cond_f

    .line 210
    .line 211
    if-eqz v9, :cond_f

    .line 212
    .line 213
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineLeft(I)F

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    return v0

    .line 218
    :cond_f
    sub-int/2addr v11, v10

    .line 219
    if-ne v8, v11, :cond_10

    .line 220
    .line 221
    if-nez v9, :cond_10

    .line 222
    .line 223
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineRight(I)F

    .line 224
    .line 225
    .line 226
    move-result v0

    .line 227
    return v0

    .line 228
    :cond_10
    if-eqz v9, :cond_11

    .line 229
    .line 230
    sub-int/2addr v8, v10

    .line 231
    aget-object v0, v12, v8

    .line 232
    .line 233
    iget v0, v0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->start:I

    .line 234
    .line 235
    invoke-virtual {v3, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 236
    .line 237
    .line 238
    move-result v0

    .line 239
    return v0

    .line 240
    :cond_11
    add-int/2addr v8, v10

    .line 241
    aget-object v0, v12, v8

    .line 242
    .line 243
    iget v0, v0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->start:I

    .line 244
    .line 245
    invoke-virtual {v3, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 246
    .line 247
    .line 248
    move-result v0

    .line 249
    return v0

    .line 250
    :cond_12
    if-le v1, v6, :cond_13

    .line 251
    .line 252
    invoke-virtual {v0, v1, v5}, Lcom/fsck/k9/mailstore/LocalStore$7;->lineEndToVisibleEnd(II)I

    .line 253
    .line 254
    .line 255
    move-result v0

    .line 256
    goto :goto_9

    .line 257
    :cond_13
    move v0, v1

    .line 258
    :goto_9
    move v1, v13

    .line 259
    :goto_a
    if-ge v1, v11, :cond_15

    .line 260
    .line 261
    aget-object v2, v12, v1

    .line 262
    .line 263
    iget v2, v2, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->end:I

    .line 264
    .line 265
    if-ne v2, v0, :cond_14

    .line 266
    .line 267
    move v8, v1

    .line 268
    goto :goto_b

    .line 269
    :cond_14
    add-int/lit8 v1, v1, 0x1

    .line 270
    .line 271
    goto :goto_a

    .line 272
    :cond_15
    const/4 v8, -0x1

    .line 273
    :goto_b
    aget-object v0, v12, v8

    .line 274
    .line 275
    if-nez p2, :cond_18

    .line 276
    .line 277
    iget-boolean v0, v0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->isRtl:Z

    .line 278
    .line 279
    if-ne v7, v0, :cond_16

    .line 280
    .line 281
    goto :goto_c

    .line 282
    :cond_16
    if-nez v7, :cond_17

    .line 283
    .line 284
    move v9, v10

    .line 285
    goto :goto_d

    .line 286
    :cond_17
    move v9, v13

    .line 287
    goto :goto_d

    .line 288
    :cond_18
    :goto_c
    move v9, v7

    .line 289
    :goto_d
    if-nez v8, :cond_19

    .line 290
    .line 291
    if-eqz v9, :cond_19

    .line 292
    .line 293
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineLeft(I)F

    .line 294
    .line 295
    .line 296
    move-result v0

    .line 297
    return v0

    .line 298
    :cond_19
    sub-int/2addr v11, v10

    .line 299
    if-ne v8, v11, :cond_1a

    .line 300
    .line 301
    if-nez v9, :cond_1a

    .line 302
    .line 303
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineRight(I)F

    .line 304
    .line 305
    .line 306
    move-result v0

    .line 307
    return v0

    .line 308
    :cond_1a
    if-eqz v9, :cond_1b

    .line 309
    .line 310
    sub-int/2addr v8, v10

    .line 311
    aget-object v0, v12, v8

    .line 312
    .line 313
    iget v0, v0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->end:I

    .line 314
    .line 315
    invoke-virtual {v3, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 316
    .line 317
    .line 318
    move-result v0

    .line 319
    return v0

    .line 320
    :cond_1b
    add-int/2addr v8, v10

    .line 321
    aget-object v0, v12, v8

    .line 322
    .line 323
    iget v0, v0, Landroidx/compose/ui/text/android/LayoutHelper$BidiRun;->end:I

    .line 324
    .line 325
    invoke-virtual {v3, v0}, Landroid/text/Layout;->getPrimaryHorizontal(I)F

    .line 326
    .line 327
    .line 328
    move-result v0

    .line 329
    return v0

    .line 330
    :goto_e
    invoke-virtual {v3, v5}, Landroid/text/Layout;->isRtlCharAt(I)Z

    .line 331
    .line 332
    .line 333
    move-result v0

    .line 334
    if-nez p2, :cond_1c

    .line 335
    .line 336
    if-ne v7, v0, :cond_1e

    .line 337
    .line 338
    :cond_1c
    if-nez v7, :cond_1d

    .line 339
    .line 340
    move v7, v10

    .line 341
    goto :goto_f

    .line 342
    :cond_1d
    move v7, v13

    .line 343
    :cond_1e
    :goto_f
    if-ne v1, v5, :cond_1f

    .line 344
    .line 345
    move v9, v7

    .line 346
    goto :goto_10

    .line 347
    :cond_1f
    if-nez v7, :cond_20

    .line 348
    .line 349
    move v9, v10

    .line 350
    goto :goto_10

    .line 351
    :cond_20
    move v9, v13

    .line 352
    :goto_10
    if-eqz v9, :cond_21

    .line 353
    .line 354
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineLeft(I)F

    .line 355
    .line 356
    .line 357
    move-result v0

    .line 358
    return v0

    .line 359
    :cond_21
    invoke-virtual {v3, v4}, Landroid/text/Layout;->getLineRight(I)F

    .line 360
    .line 361
    .line 362
    move-result v0

    .line 363
    return v0

    .line 364
    :cond_22
    :goto_11
    invoke-virtual/range {p0 .. p2}, Lcom/fsck/k9/mailstore/LocalStore$7;->getDownstreamHorizontal(IZ)F

    .line 365
    .line 366
    .line 367
    move-result v0

    .line 368
    return v0
.end method

.method public getMaxIntrinsicWidth()F
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

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
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

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

.method public getParagraphForOffset(IZ)I
    .locals 1

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    invoke-static {p0, v0}, Landroidx/compose/ui/unit/IntOffsetKt;->binarySearch$default(Ljava/util/ArrayList;Ljava/lang/Comparable;)I

    .line 10
    .line 11
    .line 12
    move-result v0

    .line 13
    if-gez v0, :cond_0

    .line 14
    .line 15
    add-int/lit8 v0, v0, 0x1

    .line 16
    .line 17
    neg-int v0, v0

    .line 18
    goto :goto_0

    .line 19
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 20
    .line 21
    :goto_0
    if-eqz p2, :cond_1

    .line 22
    .line 23
    if-lez v0, :cond_1

    .line 24
    .line 25
    add-int/lit8 p2, v0, -0x1

    .line 26
    .line 27
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 28
    .line 29
    .line 30
    move-result-object p0

    .line 31
    check-cast p0, Ljava/lang/Number;

    .line 32
    .line 33
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 34
    .line 35
    .line 36
    move-result p0

    .line 37
    if-ne p1, p0, :cond_1

    .line 38
    .line 39
    return p2

    .line 40
    :cond_1
    return v0
.end method

.method public getParagraphStart(I)I
    .locals 0

    .line 1
    if-nez p1, :cond_0

    .line 2
    .line 3
    const/4 p0, 0x0

    .line 4
    return p0

    .line 5
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/util/ArrayList;

    .line 8
    .line 9
    add-int/lit8 p1, p1, -0x1

    .line 10
    .line 11
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    check-cast p0, Ljava/lang/Number;

    .line 16
    .line 17
    invoke-virtual {p0}, Ljava/lang/Number;->intValue()I

    .line 18
    .line 19
    .line 20
    move-result p0

    .line 21
    return p0
.end method

.method public getSupportsCopy()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getSupportsExpunge()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getSupportsFlags()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getSupportsFolderSubscriptions()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getSupportsMove()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getSupportsSearchByDate()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getSupportsTrashFolder()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public getSupportsUpload()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public isPushCapable()Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public layoutSingleChildHorizontal(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;IIII)V
    .locals 5

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 10
    .line 11
    iget v1, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    .line 12
    .line 13
    iget v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    .line 14
    .line 15
    const/4 v3, -0x1

    .line 16
    if-eq v2, v3, :cond_0

    .line 17
    .line 18
    move v1, v2

    .line 19
    :cond_0
    iget v2, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 20
    .line 21
    const/4 v3, 0x2

    .line 22
    if-eqz v1, :cond_7

    .line 23
    .line 24
    const/4 v4, 0x1

    .line 25
    if-eq v1, v4, :cond_5

    .line 26
    .line 27
    if-eq v1, v3, :cond_3

    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    if-eq v1, v2, :cond_1

    .line 31
    .line 32
    const/4 p2, 0x4

    .line 33
    if-eq v1, p2, :cond_7

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    .line 37
    .line 38
    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mMaxBaseline:I

    .line 39
    .line 40
    if-eq p0, v3, :cond_2

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    .line 43
    .line 44
    .line 45
    move-result p0

    .line 46
    sub-int/2addr p2, p0

    .line 47
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 48
    .line 49
    invoke-static {p2, p0}, Ljava/lang/Math;->max(II)I

    .line 50
    .line 51
    .line 52
    move-result p0

    .line 53
    add-int/2addr p4, p0

    .line 54
    add-int/2addr p6, p0

    .line 55
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 56
    .line 57
    .line 58
    return-void

    .line 59
    :cond_2
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 60
    .line 61
    .line 62
    move-result p0

    .line 63
    sub-int/2addr p2, p0

    .line 64
    invoke-virtual {p1}, Landroid/view/View;->getBaseline()I

    .line 65
    .line 66
    .line 67
    move-result p0

    .line 68
    add-int/2addr p0, p2

    .line 69
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 70
    .line 71
    invoke-static {p0, p2}, Ljava/lang/Math;->max(II)I

    .line 72
    .line 73
    .line 74
    move-result p0

    .line 75
    sub-int/2addr p4, p0

    .line 76
    sub-int/2addr p6, p0

    .line 77
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 78
    .line 79
    .line 80
    return-void

    .line 81
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 82
    .line 83
    .line 84
    move-result p2

    .line 85
    sub-int/2addr v2, p2

    .line 86
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 87
    .line 88
    add-int/2addr v2, p2

    .line 89
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 90
    .line 91
    sub-int/2addr v2, p2

    .line 92
    div-int/2addr v2, v3

    .line 93
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    .line 94
    .line 95
    if-eq p0, v3, :cond_4

    .line 96
    .line 97
    add-int/2addr p4, v2

    .line 98
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 99
    .line 100
    .line 101
    move-result p0

    .line 102
    add-int/2addr p0, p4

    .line 103
    invoke-virtual {p1, p3, p4, p5, p0}, Landroid/view/View;->layout(IIII)V

    .line 104
    .line 105
    .line 106
    return-void

    .line 107
    :cond_4
    sub-int/2addr p4, v2

    .line 108
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 109
    .line 110
    .line 111
    move-result p0

    .line 112
    add-int/2addr p0, p4

    .line 113
    invoke-virtual {p1, p3, p4, p5, p0}, Landroid/view/View;->layout(IIII)V

    .line 114
    .line 115
    .line 116
    return-void

    .line 117
    :cond_5
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    .line 118
    .line 119
    if-eq p0, v3, :cond_6

    .line 120
    .line 121
    add-int/2addr p4, v2

    .line 122
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 123
    .line 124
    .line 125
    move-result p0

    .line 126
    sub-int p0, p4, p0

    .line 127
    .line 128
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 129
    .line 130
    sub-int/2addr p0, p2

    .line 131
    sub-int/2addr p4, p2

    .line 132
    invoke-virtual {p1, p3, p0, p5, p4}, Landroid/view/View;->layout(IIII)V

    .line 133
    .line 134
    .line 135
    return-void

    .line 136
    :cond_6
    sub-int/2addr p4, v2

    .line 137
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 138
    .line 139
    .line 140
    move-result p0

    .line 141
    add-int/2addr p0, p4

    .line 142
    iget p2, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 143
    .line 144
    add-int/2addr p0, p2

    .line 145
    sub-int/2addr p6, v2

    .line 146
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 147
    .line 148
    .line 149
    move-result p2

    .line 150
    add-int/2addr p2, p6

    .line 151
    iget p4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 152
    .line 153
    add-int/2addr p2, p4

    .line 154
    invoke-virtual {p1, p3, p0, p5, p2}, Landroid/view/View;->layout(IIII)V

    .line 155
    .line 156
    .line 157
    return-void

    .line 158
    :cond_7
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexWrap:I

    .line 159
    .line 160
    if-eq p0, v3, :cond_8

    .line 161
    .line 162
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 163
    .line 164
    add-int/2addr p4, p0

    .line 165
    add-int/2addr p6, p0

    .line 166
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 167
    .line 168
    .line 169
    return-void

    .line 170
    :cond_8
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 171
    .line 172
    sub-int/2addr p4, p0

    .line 173
    sub-int/2addr p6, p0

    .line 174
    invoke-virtual {p1, p3, p4, p5, p6}, Landroid/view/View;->layout(IIII)V

    .line 175
    .line 176
    .line 177
    return-void
.end method

.method public layoutSingleChildVertical(Landroid/view/View;Lcom/google/android/flexbox/FlexLine;ZIIII)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 10
    .line 11
    iget p0, p0, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    .line 12
    .line 13
    iget v1, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    .line 14
    .line 15
    const/4 v2, -0x1

    .line 16
    if-eq v1, v2, :cond_0

    .line 17
    .line 18
    move p0, v1

    .line 19
    :cond_0
    iget p2, p2, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 20
    .line 21
    if-eqz p0, :cond_5

    .line 22
    .line 23
    const/4 v1, 0x1

    .line 24
    if-eq p0, v1, :cond_3

    .line 25
    .line 26
    const/4 v1, 0x2

    .line 27
    if-eq p0, v1, :cond_1

    .line 28
    .line 29
    const/4 p2, 0x3

    .line 30
    if-eq p0, p2, :cond_5

    .line 31
    .line 32
    const/4 p2, 0x4

    .line 33
    if-eq p0, p2, :cond_5

    .line 34
    .line 35
    return-void

    .line 36
    :cond_1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 37
    .line 38
    .line 39
    move-result-object p0

    .line 40
    check-cast p0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 41
    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 43
    .line 44
    .line 45
    move-result v0

    .line 46
    sub-int/2addr p2, v0

    .line 47
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginStart()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    add-int/2addr v0, p2

    .line 52
    invoke-virtual {p0}, Landroid/view/ViewGroup$MarginLayoutParams;->getMarginEnd()I

    .line 53
    .line 54
    .line 55
    move-result p0

    .line 56
    sub-int/2addr v0, p0

    .line 57
    div-int/2addr v0, v1

    .line 58
    if-nez p3, :cond_2

    .line 59
    .line 60
    add-int/2addr p4, v0

    .line 61
    add-int/2addr p6, v0

    .line 62
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 63
    .line 64
    .line 65
    return-void

    .line 66
    :cond_2
    sub-int/2addr p4, v0

    .line 67
    sub-int/2addr p6, v0

    .line 68
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 69
    .line 70
    .line 71
    return-void

    .line 72
    :cond_3
    if-nez p3, :cond_4

    .line 73
    .line 74
    add-int/2addr p4, p2

    .line 75
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 76
    .line 77
    .line 78
    move-result p0

    .line 79
    sub-int/2addr p4, p0

    .line 80
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 81
    .line 82
    sub-int/2addr p4, p0

    .line 83
    add-int/2addr p6, p2

    .line 84
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 85
    .line 86
    .line 87
    move-result p0

    .line 88
    sub-int/2addr p6, p0

    .line 89
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 90
    .line 91
    sub-int/2addr p6, p0

    .line 92
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 93
    .line 94
    .line 95
    return-void

    .line 96
    :cond_4
    sub-int/2addr p4, p2

    .line 97
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 98
    .line 99
    .line 100
    move-result p0

    .line 101
    add-int/2addr p0, p4

    .line 102
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 103
    .line 104
    add-int/2addr p0, p3

    .line 105
    sub-int/2addr p6, p2

    .line 106
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 107
    .line 108
    .line 109
    move-result p2

    .line 110
    add-int/2addr p2, p6

    .line 111
    iget p3, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 112
    .line 113
    add-int/2addr p2, p3

    .line 114
    invoke-virtual {p1, p0, p5, p2, p7}, Landroid/view/View;->layout(IIII)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_5
    if-nez p3, :cond_6

    .line 119
    .line 120
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 121
    .line 122
    add-int/2addr p4, p0

    .line 123
    add-int/2addr p6, p0

    .line 124
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 125
    .line 126
    .line 127
    return-void

    .line 128
    :cond_6
    iget p0, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 129
    .line 130
    sub-int/2addr p4, p0

    .line 131
    sub-int/2addr p6, p0

    .line 132
    invoke-virtual {p1, p4, p5, p6, p7}, Landroid/view/View;->layout(IIII)V

    .line 133
    .line 134
    .line 135
    return-void
.end method

.method public lineEndToVisibleEnd(II)I
    .locals 2

    .line 1
    :goto_0
    if-le p1, p2, :cond_3

    .line 2
    .line 3
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

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

.method public map(Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;)Ljava/lang/Object;
    .locals 37

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    iget v1, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->$r8$classId:I

    .line 4
    .line 5
    const/16 v2, 0x34

    .line 6
    .line 7
    const-string v3, ""

    .line 8
    .line 9
    const-string v4, "Preview is not available"

    .line 10
    .line 11
    const/4 v5, 0x0

    .line 12
    const/4 v6, 0x1

    .line 13
    const/4 v7, 0x0

    .line 14
    const/4 v8, 0x2

    .line 15
    packed-switch v1, :pswitch_data_0

    .line 16
    .line 17
    .line 18
    iget-object v1, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 19
    .line 20
    move-object v10, v1

    .line 21
    check-cast v10, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 22
    .line 23
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getFromAddresses()Ljava/util/List;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getToAddresses()Ljava/util/List;

    .line 28
    .line 29
    .line 30
    move-result-object v9

    .line 31
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getPreview()Lokio/PriorityQueue;

    .line 32
    .line 33
    .line 34
    move-result-object v11

    .line 35
    iget v12, v11, Lokio/PriorityQueue;->size:I

    .line 36
    .line 37
    const/4 v13, 0x3

    .line 38
    if-ne v12, v13, :cond_0

    .line 39
    .line 40
    move/from16 v21, v6

    .line 41
    .line 42
    goto :goto_0

    .line 43
    :cond_0
    move/from16 v21, v7

    .line 44
    .line 45
    :goto_0
    if-ne v12, v8, :cond_1

    .line 46
    .line 47
    if-ne v12, v8, :cond_2

    .line 48
    .line 49
    iget-object v3, v11, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 50
    .line 51
    check-cast v3, Ljava/lang/String;

    .line 52
    .line 53
    :cond_1
    move-object/from16 v20, v3

    .line 54
    .line 55
    goto :goto_1

    .line 56
    :cond_2
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 57
    .line 58
    .line 59
    goto/16 :goto_8

    .line 60
    .line 61
    :goto_1
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getId()J

    .line 62
    .line 63
    .line 64
    move-result-wide v3

    .line 65
    iget v8, v10, Lnet/thunderbird/core/android/account/LegacyAccount;->accountNumber:I

    .line 66
    .line 67
    add-int/2addr v8, v6

    .line 68
    int-to-long v11, v8

    .line 69
    shl-long/2addr v11, v2

    .line 70
    add-long v27, v11, v3

    .line 71
    .line 72
    iget-object v2, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 73
    .line 74
    check-cast v2, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 75
    .line 76
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getFolderId()J

    .line 77
    .line 78
    .line 79
    move-result-wide v3

    .line 80
    invoke-static {v2, v10, v3, v4}, Landroidx/compose/ui/unit/IntRectKt;->shouldShowRecipients(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/core/android/account/LegacyAccount;J)Z

    .line 81
    .line 82
    .line 83
    move-result v2

    .line 84
    if-eqz v2, :cond_3

    .line 85
    .line 86
    invoke-static {v9}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 87
    .line 88
    .line 89
    move-result-object v1

    .line 90
    :goto_2
    check-cast v1, Lcom/fsck/k9/mail/Address;

    .line 91
    .line 92
    goto :goto_3

    .line 93
    :cond_3
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 94
    .line 95
    .line 96
    move-result-object v1

    .line 97
    goto :goto_2

    .line 98
    :goto_3
    iget-object v3, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 99
    .line 100
    check-cast v3, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 101
    .line 102
    invoke-virtual {v3}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->getConfig()Ljava/lang/Object;

    .line 103
    .line 104
    .line 105
    move-result-object v3

    .line 106
    check-cast v3, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 107
    .line 108
    iget-object v4, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 109
    .line 110
    check-cast v4, Lcom/fsck/k9/helper/MessageHelper;

    .line 111
    .line 112
    if-eqz v2, :cond_4

    .line 113
    .line 114
    new-array v2, v7, [Lcom/fsck/k9/mail/Address;

    .line 115
    .line 116
    invoke-interface {v9, v2}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 117
    .line 118
    .line 119
    move-result-object v2

    .line 120
    check-cast v2, [Lcom/fsck/k9/mail/Address;

    .line 121
    .line 122
    iget-boolean v6, v3, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowCorrespondentNames:Z

    .line 123
    .line 124
    iget-boolean v7, v3, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isChangeContactNameColor:Z

    .line 125
    .line 126
    iget v3, v3, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->contactNameColor:I

    .line 127
    .line 128
    invoke-virtual {v4, v2, v6, v7, v3}, Lcom/fsck/k9/helper/MessageHelper;->getRecipientDisplayNames([Lcom/fsck/k9/mail/Address;ZZI)Ljava/lang/CharSequence;

    .line 129
    .line 130
    .line 131
    move-result-object v2

    .line 132
    :goto_4
    move-object/from16 v17, v2

    .line 133
    .line 134
    goto :goto_5

    .line 135
    :cond_4
    invoke-virtual {v4, v1}, Lcom/fsck/k9/helper/MessageHelper;->getSenderDisplayName(Lcom/fsck/k9/mail/Address;)Ljava/lang/CharSequence;

    .line 136
    .line 137
    .line 138
    move-result-object v2

    .line 139
    goto :goto_4

    .line 140
    :goto_5
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getSubject()Ljava/lang/String;

    .line 141
    .line 142
    .line 143
    move-result-object v11

    .line 144
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getThreadCount()I

    .line 145
    .line 146
    .line 147
    move-result v12

    .line 148
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getMessageDate()J

    .line 149
    .line 150
    .line 151
    move-result-wide v13

    .line 152
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getInternalDate()J

    .line 153
    .line 154
    .line 155
    move-result-wide v15

    .line 156
    invoke-virtual/range {v20 .. v20}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 157
    .line 158
    .line 159
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->isRead()Z

    .line 160
    .line 161
    .line 162
    move-result v22

    .line 163
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->isStarred()Z

    .line 164
    .line 165
    .line 166
    move-result v23

    .line 167
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->isAnswered()Z

    .line 168
    .line 169
    .line 170
    move-result v24

    .line 171
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->isForwarded()Z

    .line 172
    .line 173
    .line 174
    move-result v25

    .line 175
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getHasAttachments()Z

    .line 176
    .line 177
    .line 178
    move-result v26

    .line 179
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getFolderId()J

    .line 180
    .line 181
    .line 182
    move-result-wide v29

    .line 183
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getMessageServerId()Ljava/lang/String;

    .line 184
    .line 185
    .line 186
    move-result-object v31

    .line 187
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getId()J

    .line 188
    .line 189
    .line 190
    move-result-wide v32

    .line 191
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getThreadRoot()J

    .line 192
    .line 193
    .line 194
    move-result-wide v34

    .line 195
    if-eqz v1, :cond_6

    .line 196
    .line 197
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 198
    .line 199
    check-cast v0, Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;

    .line 200
    .line 201
    if-eqz v0, :cond_5

    .line 202
    .line 203
    invoke-virtual {v0, v1}, Lcom/fsck/k9/contacts/ContactLetterBitmapCreator;->calcUnknownContactColor(Lcom/fsck/k9/mail/Address;)I

    .line 204
    .line 205
    .line 206
    move-result v0

    .line 207
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 208
    .line 209
    .line 210
    move-result-object v5

    .line 211
    :cond_5
    if-eqz v5, :cond_6

    .line 212
    .line 213
    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    .line 214
    .line 215
    .line 216
    move-result v0

    .line 217
    :goto_6
    move/from16 v36, v0

    .line 218
    .line 219
    goto :goto_7

    .line 220
    :cond_6
    const/4 v0, -0x1

    .line 221
    goto :goto_6

    .line 222
    :goto_7
    new-instance v9, Lcom/fsck/k9/ui/messagelist/MessageListItem;

    .line 223
    .line 224
    const-string v19, "undefined"

    .line 225
    .line 226
    move-object/from16 v18, v1

    .line 227
    .line 228
    invoke-direct/range {v9 .. v36}, Lcom/fsck/k9/ui/messagelist/MessageListItem;-><init>(Lnet/thunderbird/core/android/account/LegacyAccount;Ljava/lang/String;IJJLjava/lang/CharSequence;Lcom/fsck/k9/mail/Address;Ljava/lang/String;Ljava/lang/String;ZZZZZZJJLjava/lang/String;JJI)V

    .line 229
    .line 230
    .line 231
    move-object v5, v9

    .line 232
    :goto_8
    return-object v5

    .line 233
    :pswitch_0
    iget-object v1, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 234
    .line 235
    check-cast v1, Lcom/fsck/k9/helper/MessageHelper;

    .line 236
    .line 237
    iget-object v9, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 238
    .line 239
    check-cast v9, Lnet/thunderbird/core/android/account/LegacyAccount;

    .line 240
    .line 241
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getFromAddresses()Ljava/util/List;

    .line 242
    .line 243
    .line 244
    move-result-object v10

    .line 245
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getToAddresses()Ljava/util/List;

    .line 246
    .line 247
    .line 248
    move-result-object v11

    .line 249
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getPreview()Lokio/PriorityQueue;

    .line 250
    .line 251
    .line 252
    move-result-object v12

    .line 253
    iget v13, v12, Lokio/PriorityQueue;->size:I

    .line 254
    .line 255
    if-ne v13, v8, :cond_8

    .line 256
    .line 257
    if-ne v13, v8, :cond_7

    .line 258
    .line 259
    iget-object v4, v12, Lokio/PriorityQueue;->array:Ljava/lang/Object;

    .line 260
    .line 261
    check-cast v4, Ljava/lang/String;

    .line 262
    .line 263
    move-object/from16 v16, v4

    .line 264
    .line 265
    goto :goto_9

    .line 266
    :cond_7
    invoke-static {v4}, Lokhttp3/internal/_UtilJvmKt$$ExternalSyntheticLambda0;->m$2(Ljava/lang/String;)V

    .line 267
    .line 268
    .line 269
    goto/16 :goto_f

    .line 270
    .line 271
    :cond_8
    move-object/from16 v16, v3

    .line 272
    .line 273
    :goto_9
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getId()J

    .line 274
    .line 275
    .line 276
    move-result-wide v4

    .line 277
    iget v12, v9, Lnet/thunderbird/core/android/account/LegacyAccount;->accountNumber:I

    .line 278
    .line 279
    add-int/2addr v12, v6

    .line 280
    int-to-long v12, v12

    .line 281
    shl-long/2addr v12, v2

    .line 282
    add-long v22, v12, v4

    .line 283
    .line 284
    iget-object v2, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 285
    .line 286
    check-cast v2, Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;

    .line 287
    .line 288
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getFolderId()J

    .line 289
    .line 290
    .line 291
    move-result-wide v4

    .line 292
    invoke-static {v2, v9, v4, v5}, Landroidx/compose/ui/unit/IntRectKt;->shouldShowRecipients(Lcom/fsck/k9/mailstore/folder/DefaultOutboxFolderManager;Lnet/thunderbird/core/android/account/LegacyAccount;J)Z

    .line 293
    .line 294
    .line 295
    move-result v2

    .line 296
    if-eqz v2, :cond_9

    .line 297
    .line 298
    invoke-static {v11}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 299
    .line 300
    .line 301
    move-result-object v4

    .line 302
    :goto_a
    check-cast v4, Lcom/fsck/k9/mail/Address;

    .line 303
    .line 304
    goto :goto_b

    .line 305
    :cond_9
    invoke-static {v10}, Lkotlin/collections/CollectionsKt;->firstOrNull(Ljava/util/List;)Ljava/lang/Object;

    .line 306
    .line 307
    .line 308
    move-result-object v4

    .line 309
    goto :goto_a

    .line 310
    :goto_b
    if-eqz v2, :cond_a

    .line 311
    .line 312
    iget-object v2, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 313
    .line 314
    check-cast v2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;

    .line 315
    .line 316
    invoke-virtual {v2}, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DefaultMessageListPreferencesManager;->getConfig()Ljava/lang/Object;

    .line 317
    .line 318
    .line 319
    move-result-object v2

    .line 320
    check-cast v2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;

    .line 321
    .line 322
    new-array v4, v7, [Lcom/fsck/k9/mail/Address;

    .line 323
    .line 324
    invoke-interface {v11, v4}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 325
    .line 326
    .line 327
    move-result-object v4

    .line 328
    check-cast v4, [Lcom/fsck/k9/mail/Address;

    .line 329
    .line 330
    iget-boolean v5, v2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isShowCorrespondentNames:Z

    .line 331
    .line 332
    iget-boolean v10, v2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->isChangeContactNameColor:Z

    .line 333
    .line 334
    iget v2, v2, Lnet/thunderbird/core/preference/display/visualSettings/message/list/DisplayMessageListSettings;->contactNameColor:I

    .line 335
    .line 336
    invoke-virtual {v1, v4, v5, v10, v2}, Lcom/fsck/k9/helper/MessageHelper;->getRecipientDisplayNames([Lcom/fsck/k9/mail/Address;ZZI)Ljava/lang/CharSequence;

    .line 337
    .line 338
    .line 339
    move-result-object v1

    .line 340
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 341
    .line 342
    .line 343
    move-result-object v1

    .line 344
    :goto_c
    move-object v13, v1

    .line 345
    goto :goto_d

    .line 346
    :cond_a
    invoke-virtual {v1, v4}, Lcom/fsck/k9/helper/MessageHelper;->getSenderDisplayName(Lcom/fsck/k9/mail/Address;)Ljava/lang/CharSequence;

    .line 347
    .line 348
    .line 349
    move-result-object v1

    .line 350
    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    .line 351
    .line 352
    .line 353
    move-result-object v1

    .line 354
    goto :goto_c

    .line 355
    :goto_d
    new-instance v12, Lapp/k9mail/feature/widget/message/list/MessageListItem;

    .line 356
    .line 357
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getMessageDate()J

    .line 358
    .line 359
    .line 360
    move-result-wide v1

    .line 361
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 362
    .line 363
    check-cast v0, Ljava/util/Calendar;

    .line 364
    .line 365
    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 366
    .line 367
    .line 368
    const/4 v1, 0x5

    .line 369
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    .line 370
    .line 371
    .line 372
    move-result v1

    .line 373
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    .line 374
    .line 375
    .line 376
    move-result-object v2

    .line 377
    invoke-virtual {v0, v8, v6, v2}, Ljava/util/Calendar;->getDisplayName(IILjava/util/Locale;)Ljava/lang/String;

    .line 378
    .line 379
    .line 380
    move-result-object v0

    .line 381
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 382
    .line 383
    .line 384
    move-result-object v1

    .line 385
    new-array v2, v8, [Ljava/lang/Object;

    .line 386
    .line 387
    aput-object v1, v2, v7

    .line 388
    .line 389
    aput-object v0, v2, v6

    .line 390
    .line 391
    invoke-static {v2, v8}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v0

    .line 395
    const-string v1, "%d %s"

    .line 396
    .line 397
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 398
    .line 399
    .line 400
    move-result-object v14

    .line 401
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getSubject()Ljava/lang/String;

    .line 402
    .line 403
    .line 404
    move-result-object v0

    .line 405
    if-nez v0, :cond_b

    .line 406
    .line 407
    move-object v15, v3

    .line 408
    goto :goto_e

    .line 409
    :cond_b
    move-object v15, v0

    .line 410
    :goto_e
    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 411
    .line 412
    .line 413
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->isRead()Z

    .line 414
    .line 415
    .line 416
    move-result v17

    .line 417
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getHasAttachments()Z

    .line 418
    .line 419
    .line 420
    move-result v18

    .line 421
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getThreadCount()I

    .line 422
    .line 423
    .line 424
    move-result v19

    .line 425
    iget-object v0, v9, Lnet/thunderbird/core/android/account/LegacyAccount;->profile:Lnet/thunderbird/feature/account/storage/profile/ProfileDto;

    .line 426
    .line 427
    iget v0, v0, Lnet/thunderbird/feature/account/storage/profile/ProfileDto;->color:I

    .line 428
    .line 429
    new-instance v1, Lapp/k9mail/legacy/message/controller/MessageReference;

    .line 430
    .line 431
    iget-object v2, v9, Lnet/thunderbird/core/android/account/LegacyAccount;->uuid:Ljava/lang/String;

    .line 432
    .line 433
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getFolderId()J

    .line 434
    .line 435
    .line 436
    move-result-wide v3

    .line 437
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getMessageServerId()Ljava/lang/String;

    .line 438
    .line 439
    .line 440
    move-result-object v5

    .line 441
    invoke-direct {v1, v3, v4, v2, v5}, Lapp/k9mail/legacy/message/controller/MessageReference;-><init>(JLjava/lang/String;Ljava/lang/String;)V

    .line 442
    .line 443
    .line 444
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getSubject()Ljava/lang/String;

    .line 445
    .line 446
    .line 447
    move-result-object v24

    .line 448
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getMessageDate()J

    .line 449
    .line 450
    .line 451
    move-result-wide v25

    .line 452
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getInternalDate()J

    .line 453
    .line 454
    .line 455
    move-result-wide v27

    .line 456
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->isStarred()Z

    .line 457
    .line 458
    .line 459
    move-result v29

    .line 460
    invoke-interface/range {p1 .. p1}, Lapp/k9mail/legacy/mailstore/MessageDetailsAccessor;->getId()J

    .line 461
    .line 462
    .line 463
    move-result-wide v30

    .line 464
    move/from16 v20, v0

    .line 465
    .line 466
    move-object/from16 v21, v1

    .line 467
    .line 468
    invoke-direct/range {v12 .. v31}, Lapp/k9mail/feature/widget/message/list/MessageListItem;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZIILapp/k9mail/legacy/message/controller/MessageReference;JLjava/lang/String;JJZJ)V

    .line 469
    .line 470
    .line 471
    move-object v5, v12

    .line 472
    :goto_f
    return-object v5

    .line 473
    :pswitch_data_0
    .packed-switch 0xb
        :pswitch_0
    .end packed-switch
.end method

.method public markAllAsRead(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    const-string p1, "not supported"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public moveMessages(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
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
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 11
    .line 12
    const-string p1, "not supported"

    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method public moveMessagesAndMarkAsRead(Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/Map;
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
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 11
    .line 12
    const-string p1, "not supported"

    .line 13
    .line 14
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 15
    .line 16
    .line 17
    throw p0
.end method

.method public refreshFolderList()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Landroidx/work/Configuration$Builder;

    .line 4
    .line 5
    iget-object p0, p0, Landroidx/work/Configuration$Builder;->workerFactory:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Lokhttp3/Dispatcher;

    .line 8
    .line 9
    iget-object v0, p0, Lokhttp3/Dispatcher;->executorServiceOrNull:Ljava/lang/Object;

    .line 10
    .line 11
    check-cast v0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 12
    .line 13
    new-instance v1, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;

    .line 14
    .line 15
    const/4 v2, 0x6

    .line 16
    invoke-direct {v1, v2}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;-><init>(I)V

    .line 17
    .line 18
    .line 19
    iget-object v0, v0, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 20
    .line 21
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast v0, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 24
    .line 25
    invoke-virtual {v0, v1}, Lcom/fsck/k9/storage/messages/K9MessageStore;->getFolders(Lapp/k9mail/legacy/mailstore/FolderMapper;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    const-string v1, "INBOX"

    .line 30
    .line 31
    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    .line 32
    .line 33
    .line 34
    move-result v0

    .line 35
    if-nez v0, :cond_0

    .line 36
    .line 37
    new-instance v0, Lcom/fsck/k9/mailstore/K9BackendStorage$K9BackendFolderUpdater;

    .line 38
    .line 39
    invoke-direct {v0, p0}, Lcom/fsck/k9/mailstore/K9BackendStorage$K9BackendFolderUpdater;-><init>(Lokhttp3/Dispatcher;)V

    .line 40
    .line 41
    .line 42
    :try_start_0
    new-instance p0, Lcom/fsck/k9/backend/api/FolderInfo;

    .line 43
    .line 44
    sget-object v2, Lcom/fsck/k9/mail/FolderType;->INBOX:Lcom/fsck/k9/mail/FolderType;

    .line 45
    .line 46
    invoke-direct {p0, v1, v1, v2}, Lcom/fsck/k9/backend/api/FolderInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/fsck/k9/mail/FolderType;)V

    .line 47
    .line 48
    .line 49
    invoke-static {p0}, Landroidx/compose/ui/unit/IntOffsetKt;->listOf(Ljava/lang/Object;)Ljava/util/List;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    invoke-virtual {v0, p0}, Lcom/fsck/k9/mailstore/K9BackendStorage$K9BackendFolderUpdater;->createFolders(Ljava/util/List;)Ljava/util/Set;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 54
    .line 55
    .line 56
    invoke-virtual {v0}, Lcom/fsck/k9/mailstore/K9BackendStorage$K9BackendFolderUpdater;->close()V

    .line 57
    .line 58
    .line 59
    goto :goto_0

    .line 60
    :catchall_0
    move-exception p0

    .line 61
    :try_start_1
    throw p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 62
    :catchall_1
    move-exception v1

    .line 63
    invoke-static {v0, p0}, Lkotlin/io/CloseableKt;->closeFinally(Ljava/io/Closeable;Ljava/lang/Throwable;)V

    .line 64
    .line 65
    .line 66
    throw v1

    .line 67
    :cond_0
    :goto_0
    const/4 p0, 0x0

    .line 68
    return-object p0
.end method

.method public releaseUnprocessedElements(Ljava/lang/Throwable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lkotlin/collections/ArrayDeque;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 8
    .line 9
    const/4 v2, 0x0

    .line 10
    invoke-virtual {v1, p1, v2}, Lkotlinx/coroutines/channels/BufferedChannel;->closeOrCancelImpl(Ljava/lang/Throwable;Z)Z

    .line 11
    .line 12
    .line 13
    move-result p1

    .line 14
    if-eqz p1, :cond_1

    .line 15
    .line 16
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    :goto_0
    instance-of v2, p1, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 21
    .line 22
    if-nez v2, :cond_0

    .line 23
    .line 24
    invoke-static {p1}, Lkotlinx/coroutines/channels/ChannelResult;->getOrThrow-impl(Ljava/lang/Object;)V

    .line 25
    .line 26
    .line 27
    invoke-virtual {v0, p1}, Lkotlin/collections/ArrayDeque;->addLast(Ljava/lang/Object;)V

    .line 28
    .line 29
    .line 30
    invoke-virtual {v1}, Lkotlinx/coroutines/channels/BufferedChannel;->tryReceive-PtdJZtk()Ljava/lang/Object;

    .line 31
    .line 32
    .line 33
    move-result-object p1

    .line 34
    goto :goto_0

    .line 35
    :cond_0
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->isEmpty()Z

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    if-nez p1, :cond_1

    .line 40
    .line 41
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 42
    .line 43
    check-cast p0, Lkotlin/jvm/functions/Function1;

    .line 44
    .line 45
    new-instance p1, Ljava/util/ArrayList;

    .line 46
    .line 47
    invoke-direct {p1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 48
    .line 49
    .line 50
    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    invoke-virtual {v0}, Lkotlin/collections/ArrayDeque;->clear()V

    .line 54
    .line 55
    .line 56
    :cond_1
    return-void
.end method

.method public search(Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    const-string p1, "not supported"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public sendMessage(Lcom/fsck/k9/mail/internet/MimeMessage;)V
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;

    .line 4
    .line 5
    invoke-virtual {p0, p1}, Lcom/fsck/k9/mail/transport/smtp/SmtpTransport;->sendMessage(Lcom/fsck/k9/mail/internet/MimeMessage;)V

    .line 6
    .line 7
    .line 8
    return-void
.end method

.method public set(Ljava/lang/Object;Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 5
    .line 6
    check-cast v0, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-interface {v0, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    .line 10
    .line 11
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

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
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

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

.method public setFlag(Ljava/lang/String;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V
    .locals 0

    .line 1
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 5
    .line 6
    .line 7
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast p0, Lcom/fsck/k9/backend/pop3/CommandSetFlag;

    .line 10
    .line 11
    invoke-virtual {p0, p1, p2, p3, p4}, Lcom/fsck/k9/backend/pop3/CommandSetFlag;->setFlag(Ljava/lang/String;Ljava/util/List;Lnet/thunderbird/core/common/mail/Flag;Z)V

    .line 12
    .line 13
    .line 14
    return-void
.end method

.method public setVisible(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Landroid/widget/ViewAnimator;

    .line 4
    .line 5
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v1, Landroid/view/View;

    .line 8
    .line 9
    const/16 v2, 0x8

    .line 10
    .line 11
    const/4 v3, 0x0

    .line 12
    if-eqz p1, :cond_0

    .line 13
    .line 14
    move v4, v3

    .line 15
    goto :goto_0

    .line 16
    :cond_0
    move v4, v2

    .line 17
    :goto_0
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 18
    .line 19
    .line 20
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 21
    .line 22
    check-cast v1, Lcom/fsck/k9/view/RecipientSelectView;

    .line 23
    .line 24
    if-eqz p1, :cond_1

    .line 25
    .line 26
    move v4, v3

    .line 27
    goto :goto_1

    .line 28
    :cond_1
    move v4, v2

    .line 29
    :goto_1
    invoke-virtual {v1, v4}, Landroid/view/View;->setVisibility(I)V

    .line 30
    .line 31
    .line 32
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast p0, Landroid/view/View;

    .line 35
    .line 36
    if-eqz p1, :cond_2

    .line 37
    .line 38
    move v2, v3

    .line 39
    :cond_2
    invoke-virtual {p0, v2}, Landroid/view/View;->setVisibility(I)V

    .line 40
    .line 41
    .line 42
    const/4 p0, 0x1

    .line 43
    if-eqz p1, :cond_3

    .line 44
    .line 45
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    .line 46
    .line 47
    .line 48
    move-result p1

    .line 49
    if-nez p1, :cond_3

    .line 50
    .line 51
    invoke-virtual {v0, p0}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 52
    .line 53
    .line 54
    return-void

    .line 55
    :cond_3
    invoke-virtual {v0}, Landroid/widget/ViewAnimator;->getDisplayedChild()I

    .line 56
    .line 57
    .line 58
    move-result p1

    .line 59
    if-ne p1, p0, :cond_4

    .line 60
    .line 61
    invoke-virtual {v0, v3}, Landroid/widget/ViewAnimator;->setDisplayedChild(I)V

    .line 62
    .line 63
    .line 64
    :cond_4
    return-void
.end method

.method public shrinkFlexItems(Lcom/google/android/flexbox/FlexLine;IIZ)V
    .locals 26

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    move/from16 v2, p2

    .line 6
    .line 7
    iget-object v4, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 8
    .line 9
    check-cast v4, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 10
    .line 11
    iget v5, v1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 12
    .line 13
    iget v6, v1, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 14
    .line 15
    const/4 v7, 0x0

    .line 16
    cmpg-float v8, v6, v7

    .line 17
    .line 18
    if-lez v8, :cond_15

    .line 19
    .line 20
    if-le v2, v5, :cond_0

    .line 21
    .line 22
    goto/16 :goto_c

    .line 23
    .line 24
    :cond_0
    sub-int v8, v5, v2

    .line 25
    .line 26
    int-to-float v8, v8

    .line 27
    div-float/2addr v8, v6

    .line 28
    iget v6, v1, Lcom/google/android/flexbox/FlexLine;->mDividerLengthInMainSize:I

    .line 29
    .line 30
    add-int v6, p3, v6

    .line 31
    .line 32
    iput v6, v1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 33
    .line 34
    if-nez p4, :cond_1

    .line 35
    .line 36
    const/high16 v6, -0x80000000

    .line 37
    .line 38
    iput v6, v1, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 39
    .line 40
    :cond_1
    const/4 v6, 0x0

    .line 41
    move v9, v6

    .line 42
    move v10, v9

    .line 43
    move v11, v7

    .line 44
    :goto_0
    iget v12, v1, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 45
    .line 46
    if-ge v6, v12, :cond_14

    .line 47
    .line 48
    iget v12, v1, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 49
    .line 50
    add-int/2addr v12, v6

    .line 51
    invoke-virtual {v4, v12}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    .line 52
    .line 53
    .line 54
    move-result-object v14

    .line 55
    if-eqz v14, :cond_13

    .line 56
    .line 57
    invoke-virtual {v14}, Landroid/view/View;->getVisibility()I

    .line 58
    .line 59
    .line 60
    move-result v15

    .line 61
    move/from16 v16, v7

    .line 62
    .line 63
    const/16 v7, 0x8

    .line 64
    .line 65
    if-ne v15, v7, :cond_2

    .line 66
    .line 67
    :goto_1
    move v15, v8

    .line 68
    move/from16 v25, v9

    .line 69
    .line 70
    goto/16 :goto_a

    .line 71
    .line 72
    :cond_2
    invoke-virtual {v14}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 73
    .line 74
    .line 75
    move-result-object v7

    .line 76
    check-cast v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 77
    .line 78
    iget v15, v4, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    .line 79
    .line 80
    const-wide/high16 v17, -0x4010000000000000L    # -1.0

    .line 81
    .line 82
    const-wide/high16 v19, 0x3ff0000000000000L    # 1.0

    .line 83
    .line 84
    const/16 v21, 0x20

    .line 85
    .line 86
    const/high16 v22, 0x3f800000    # 1.0f

    .line 87
    .line 88
    if-eqz v15, :cond_3

    .line 89
    .line 90
    const/4 v13, 0x1

    .line 91
    if-ne v15, v13, :cond_4

    .line 92
    .line 93
    :cond_3
    move v15, v8

    .line 94
    move/from16 v25, v9

    .line 95
    .line 96
    goto/16 :goto_5

    .line 97
    .line 98
    :cond_4
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 99
    .line 100
    .line 101
    move-result v13

    .line 102
    iget-object v15, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 103
    .line 104
    check-cast v15, [J

    .line 105
    .line 106
    if-eqz v15, :cond_5

    .line 107
    .line 108
    aget-wide v23, v15, v12

    .line 109
    .line 110
    move v15, v8

    .line 111
    move/from16 v25, v9

    .line 112
    .line 113
    shr-long v8, v23, v21

    .line 114
    .line 115
    long-to-int v13, v8

    .line 116
    goto :goto_2

    .line 117
    :cond_5
    move v15, v8

    .line 118
    move/from16 v25, v9

    .line 119
    .line 120
    :goto_2
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 121
    .line 122
    .line 123
    move-result v8

    .line 124
    iget-object v9, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 125
    .line 126
    check-cast v9, [J

    .line 127
    .line 128
    if-eqz v9, :cond_6

    .line 129
    .line 130
    aget-wide v8, v9, v12

    .line 131
    .line 132
    long-to-int v8, v8

    .line 133
    :cond_6
    iget-object v9, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 134
    .line 135
    check-cast v9, [Z

    .line 136
    .line 137
    aget-boolean v9, v9, v12

    .line 138
    .line 139
    if-nez v9, :cond_b

    .line 140
    .line 141
    iget v9, v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    .line 142
    .line 143
    cmpl-float v21, v9, v16

    .line 144
    .line 145
    if-lez v21, :cond_b

    .line 146
    .line 147
    int-to-float v8, v13

    .line 148
    mul-float/2addr v9, v15

    .line 149
    sub-float/2addr v8, v9

    .line 150
    iget v9, v1, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 151
    .line 152
    const/4 v13, 0x1

    .line 153
    sub-int/2addr v9, v13

    .line 154
    if-ne v6, v9, :cond_7

    .line 155
    .line 156
    add-float/2addr v8, v11

    .line 157
    move/from16 v11, v16

    .line 158
    .line 159
    :cond_7
    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    .line 160
    .line 161
    .line 162
    move-result v9

    .line 163
    move/from16 p4, v13

    .line 164
    .line 165
    iget v13, v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    .line 166
    .line 167
    if-ge v9, v13, :cond_8

    .line 168
    .line 169
    iget-object v8, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 170
    .line 171
    check-cast v8, [Z

    .line 172
    .line 173
    aput-boolean p4, v8, v12

    .line 174
    .line 175
    iget v8, v1, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 176
    .line 177
    iget v9, v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    .line 178
    .line 179
    sub-float/2addr v8, v9

    .line 180
    iput v8, v1, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 181
    .line 182
    move v9, v13

    .line 183
    const/16 v25, 0x1

    .line 184
    .line 185
    goto :goto_4

    .line 186
    :cond_8
    int-to-float v13, v9

    .line 187
    sub-float/2addr v8, v13

    .line 188
    add-float/2addr v8, v11

    .line 189
    float-to-double v2, v8

    .line 190
    cmpl-double v11, v2, v19

    .line 191
    .line 192
    if-lez v11, :cond_a

    .line 193
    .line 194
    add-int/lit8 v9, v9, 0x1

    .line 195
    .line 196
    sub-float v8, v8, v22

    .line 197
    .line 198
    :cond_9
    :goto_3
    move v11, v8

    .line 199
    goto :goto_4

    .line 200
    :cond_a
    cmpg-double v2, v2, v17

    .line 201
    .line 202
    if-gez v2, :cond_9

    .line 203
    .line 204
    add-int/lit8 v9, v9, -0x1

    .line 205
    .line 206
    add-float v8, v8, v22

    .line 207
    .line 208
    goto :goto_3

    .line 209
    :goto_4
    iget v2, v1, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    .line 210
    .line 211
    invoke-virtual {v0, v7, v2}, Lcom/fsck/k9/mailstore/LocalStore$7;->getChildWidthMeasureSpecInternal(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;I)I

    .line 212
    .line 213
    .line 214
    move-result v2

    .line 215
    const/high16 v3, 0x40000000    # 2.0f

    .line 216
    .line 217
    invoke-static {v9, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 218
    .line 219
    .line 220
    move-result v3

    .line 221
    invoke-virtual {v14, v2, v3}, Landroid/view/View;->measure(II)V

    .line 222
    .line 223
    .line 224
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 225
    .line 226
    .line 227
    move-result v8

    .line 228
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 229
    .line 230
    .line 231
    move-result v13

    .line 232
    invoke-virtual {v0, v12, v2, v3, v14}, Lcom/fsck/k9/mailstore/LocalStore$7;->updateMeasureCache(IIILandroid/view/View;)V

    .line 233
    .line 234
    .line 235
    invoke-virtual {v4, v14, v12}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    .line 236
    .line 237
    .line 238
    :cond_b
    move/from16 v9, v25

    .line 239
    .line 240
    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 241
    .line 242
    add-int/2addr v8, v2

    .line 243
    iget v2, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 244
    .line 245
    add-int/2addr v8, v2

    .line 246
    invoke-virtual {v4, v14}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    .line 247
    .line 248
    .line 249
    move-result v2

    .line 250
    add-int/2addr v2, v8

    .line 251
    invoke-static {v10, v2}, Ljava/lang/Math;->max(II)I

    .line 252
    .line 253
    .line 254
    move-result v2

    .line 255
    iget v3, v1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 256
    .line 257
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 258
    .line 259
    add-int/2addr v13, v8

    .line 260
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 261
    .line 262
    add-int/2addr v13, v7

    .line 263
    add-int/2addr v13, v3

    .line 264
    iput v13, v1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 265
    .line 266
    goto/16 :goto_9

    .line 267
    .line 268
    :goto_5
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 269
    .line 270
    .line 271
    move-result v2

    .line 272
    iget-object v3, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 273
    .line 274
    check-cast v3, [J

    .line 275
    .line 276
    if-eqz v3, :cond_c

    .line 277
    .line 278
    aget-wide v2, v3, v12

    .line 279
    .line 280
    long-to-int v2, v2

    .line 281
    :cond_c
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 282
    .line 283
    .line 284
    move-result v3

    .line 285
    iget-object v8, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 286
    .line 287
    check-cast v8, [J

    .line 288
    .line 289
    if-eqz v8, :cond_d

    .line 290
    .line 291
    aget-wide v23, v8, v12

    .line 292
    .line 293
    shr-long v8, v23, v21

    .line 294
    .line 295
    long-to-int v3, v8

    .line 296
    :cond_d
    iget-object v8, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 297
    .line 298
    check-cast v8, [Z

    .line 299
    .line 300
    aget-boolean v8, v8, v12

    .line 301
    .line 302
    if-nez v8, :cond_12

    .line 303
    .line 304
    iget v8, v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    .line 305
    .line 306
    cmpl-float v9, v8, v16

    .line 307
    .line 308
    if-lez v9, :cond_12

    .line 309
    .line 310
    int-to-float v2, v2

    .line 311
    mul-float/2addr v8, v15

    .line 312
    sub-float/2addr v2, v8

    .line 313
    iget v3, v1, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 314
    .line 315
    const/4 v13, 0x1

    .line 316
    sub-int/2addr v3, v13

    .line 317
    if-ne v6, v3, :cond_e

    .line 318
    .line 319
    add-float/2addr v2, v11

    .line 320
    move/from16 v11, v16

    .line 321
    .line 322
    :cond_e
    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    .line 323
    .line 324
    .line 325
    move-result v3

    .line 326
    iget v8, v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    .line 327
    .line 328
    if-ge v3, v8, :cond_f

    .line 329
    .line 330
    iget-object v2, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 331
    .line 332
    check-cast v2, [Z

    .line 333
    .line 334
    aput-boolean v13, v2, v12

    .line 335
    .line 336
    iget v2, v1, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 337
    .line 338
    iget v3, v7, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mFlexShrink:F

    .line 339
    .line 340
    sub-float/2addr v2, v3

    .line 341
    iput v2, v1, Lcom/google/android/flexbox/FlexLine;->mTotalFlexShrink:F

    .line 342
    .line 343
    move v3, v8

    .line 344
    const/4 v9, 0x1

    .line 345
    goto :goto_7

    .line 346
    :cond_f
    int-to-float v8, v3

    .line 347
    sub-float/2addr v2, v8

    .line 348
    add-float/2addr v2, v11

    .line 349
    float-to-double v8, v2

    .line 350
    cmpl-double v11, v8, v19

    .line 351
    .line 352
    if-lez v11, :cond_11

    .line 353
    .line 354
    add-int/lit8 v3, v3, 0x1

    .line 355
    .line 356
    sub-float v2, v2, v22

    .line 357
    .line 358
    :cond_10
    :goto_6
    move v11, v2

    .line 359
    move/from16 v9, v25

    .line 360
    .line 361
    goto :goto_7

    .line 362
    :cond_11
    cmpg-double v8, v8, v17

    .line 363
    .line 364
    if-gez v8, :cond_10

    .line 365
    .line 366
    add-int/lit8 v3, v3, -0x1

    .line 367
    .line 368
    add-float v2, v2, v22

    .line 369
    .line 370
    goto :goto_6

    .line 371
    :goto_7
    iget v2, v1, Lcom/google/android/flexbox/FlexLine;->mSumCrossSizeBefore:I

    .line 372
    .line 373
    invoke-virtual {v0, v7, v2}, Lcom/fsck/k9/mailstore/LocalStore$7;->getChildHeightMeasureSpecInternal(Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;I)I

    .line 374
    .line 375
    .line 376
    move-result v2

    .line 377
    const/high16 v8, 0x40000000    # 2.0f

    .line 378
    .line 379
    invoke-static {v3, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 380
    .line 381
    .line 382
    move-result v3

    .line 383
    invoke-virtual {v14, v3, v2}, Landroid/view/View;->measure(II)V

    .line 384
    .line 385
    .line 386
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredWidth()I

    .line 387
    .line 388
    .line 389
    move-result v8

    .line 390
    invoke-virtual {v14}, Landroid/view/View;->getMeasuredHeight()I

    .line 391
    .line 392
    .line 393
    move-result v13

    .line 394
    invoke-virtual {v0, v12, v3, v2, v14}, Lcom/fsck/k9/mailstore/LocalStore$7;->updateMeasureCache(IIILandroid/view/View;)V

    .line 395
    .line 396
    .line 397
    invoke-virtual {v4, v14, v12}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    .line 398
    .line 399
    .line 400
    move v2, v8

    .line 401
    move v3, v13

    .line 402
    goto :goto_8

    .line 403
    :cond_12
    move/from16 v9, v25

    .line 404
    .line 405
    :goto_8
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 406
    .line 407
    add-int/2addr v3, v8

    .line 408
    iget v8, v7, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 409
    .line 410
    add-int/2addr v3, v8

    .line 411
    invoke-virtual {v4, v14}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    .line 412
    .line 413
    .line 414
    move-result v8

    .line 415
    add-int/2addr v8, v3

    .line 416
    invoke-static {v10, v8}, Ljava/lang/Math;->max(II)I

    .line 417
    .line 418
    .line 419
    move-result v3

    .line 420
    iget v8, v1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 421
    .line 422
    iget v10, v7, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 423
    .line 424
    add-int/2addr v2, v10

    .line 425
    iget v7, v7, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 426
    .line 427
    add-int/2addr v2, v7

    .line 428
    add-int/2addr v2, v8

    .line 429
    iput v2, v1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 430
    .line 431
    move v2, v3

    .line 432
    :goto_9
    iget v3, v1, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 433
    .line 434
    invoke-static {v3, v2}, Ljava/lang/Math;->max(II)I

    .line 435
    .line 436
    .line 437
    move-result v3

    .line 438
    iput v3, v1, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 439
    .line 440
    move v10, v2

    .line 441
    goto :goto_b

    .line 442
    :cond_13
    move/from16 v16, v7

    .line 443
    .line 444
    goto/16 :goto_1

    .line 445
    .line 446
    :goto_a
    move/from16 v9, v25

    .line 447
    .line 448
    :goto_b
    add-int/lit8 v6, v6, 0x1

    .line 449
    .line 450
    move/from16 v2, p2

    .line 451
    .line 452
    move v8, v15

    .line 453
    move/from16 v7, v16

    .line 454
    .line 455
    goto/16 :goto_0

    .line 456
    .line 457
    :cond_14
    move/from16 v25, v9

    .line 458
    .line 459
    if-eqz v25, :cond_15

    .line 460
    .line 461
    iget v2, v1, Lcom/google/android/flexbox/FlexLine;->mMainSize:I

    .line 462
    .line 463
    if-eq v5, v2, :cond_15

    .line 464
    .line 465
    move/from16 v2, p2

    .line 466
    .line 467
    move/from16 v3, p3

    .line 468
    .line 469
    const/4 v13, 0x1

    .line 470
    invoke-virtual {v0, v1, v2, v3, v13}, Lcom/fsck/k9/mailstore/LocalStore$7;->shrinkFlexItems(Lcom/google/android/flexbox/FlexLine;IIZ)V

    .line 471
    .line 472
    .line 473
    :cond_15
    :goto_c
    return-void
.end method

.method public silentlyAddAddresses([Lcom/fsck/k9/mail/Address;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Lcom/fsck/k9/view/RecipientSelectView;

    .line 4
    .line 5
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast p0, Ljava/util/LinkedHashSet;

    .line 8
    .line 9
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 14
    .line 15
    .line 16
    move-result v2

    .line 17
    if-eqz v2, :cond_0

    .line 18
    .line 19
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 20
    .line 21
    .line 22
    move-result-object v2

    .line 23
    check-cast v2, Landroid/text/TextWatcher;

    .line 24
    .line 25
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V

    .line 26
    .line 27
    .line 28
    goto :goto_0

    .line 29
    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    .line 30
    .line 31
    array-length v2, p1

    .line 32
    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 33
    .line 34
    .line 35
    array-length v2, p1

    .line 36
    const/4 v3, 0x0

    .line 37
    move v4, v3

    .line 38
    :goto_1
    if-ge v4, v2, :cond_1

    .line 39
    .line 40
    aget-object v5, p1, v4

    .line 41
    .line 42
    new-instance v6, Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 43
    .line 44
    invoke-direct {v6, v5}, Lcom/fsck/k9/view/RecipientSelectView$Recipient;-><init>(Lcom/fsck/k9/mail/Address;)V

    .line 45
    .line 46
    .line 47
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 48
    .line 49
    .line 50
    add-int/lit8 v4, v4, 0x1

    .line 51
    .line 52
    goto :goto_1

    .line 53
    :cond_1
    new-array p1, v3, [Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 54
    .line 55
    invoke-virtual {v1, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 56
    .line 57
    .line 58
    move-result-object p1

    .line 59
    check-cast p1, [Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 60
    .line 61
    array-length v1, p1

    .line 62
    invoke-static {p1, v1}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    .line 63
    .line 64
    .line 65
    move-result-object p1

    .line 66
    check-cast p1, [Lcom/fsck/k9/view/RecipientSelectView$Recipient;

    .line 67
    .line 68
    invoke-virtual {v0, p1}, Lcom/fsck/k9/view/RecipientSelectView;->addRecipients([Lcom/fsck/k9/view/RecipientSelectView$Recipient;)V

    .line 69
    .line 70
    .line 71
    invoke-interface {p0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 72
    .line 73
    .line 74
    move-result-object p0

    .line 75
    :goto_2
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    .line 76
    .line 77
    .line 78
    move-result p1

    .line 79
    if-eqz p1, :cond_2

    .line 80
    .line 81
    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 82
    .line 83
    .line 84
    move-result-object p1

    .line 85
    check-cast p1, Landroid/text/TextWatcher;

    .line 86
    .line 87
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 88
    .line 89
    .line 90
    goto :goto_2

    .line 91
    :cond_2
    return-void
.end method

.method public stretchViewHorizontally(Landroid/view/View;II)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 6
    .line 7
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 8
    .line 9
    sub-int/2addr p2, v1

    .line 10
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    .line 11
    .line 12
    sub-int/2addr p2, v1

    .line 13
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    sub-int/2addr p2, v2

    .line 22
    iget v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinWidth:I

    .line 23
    .line 24
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxWidth:I

    .line 29
    .line 30
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, [J

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    aget-wide v2, v0, p3

    .line 41
    .line 42
    const/16 v0, 0x20

    .line 43
    .line 44
    shr-long/2addr v2, v0

    .line 45
    long-to-int v0, v2

    .line 46
    goto :goto_0

    .line 47
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredHeight()I

    .line 48
    .line 49
    .line 50
    move-result v0

    .line 51
    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    .line 52
    .line 53
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 54
    .line 55
    .line 56
    move-result v0

    .line 57
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 58
    .line 59
    .line 60
    move-result p2

    .line 61
    invoke-virtual {p1, p2, v0}, Landroid/view/View;->measure(II)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p3, p2, v0, p1}, Lcom/fsck/k9/mailstore/LocalStore$7;->updateMeasureCache(IIILandroid/view/View;)V

    .line 65
    .line 66
    .line 67
    invoke-virtual {v1, p1, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    .line 68
    .line 69
    .line 70
    return-void
.end method

.method public stretchViewVertically(Landroid/view/View;II)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 2
    .line 3
    .line 4
    move-result-object v0

    .line 5
    check-cast v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 6
    .line 7
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 8
    .line 9
    sub-int/2addr p2, v1

    .line 10
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    .line 11
    .line 12
    sub-int/2addr p2, v1

    .line 13
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 14
    .line 15
    check-cast v1, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 16
    .line 17
    invoke-virtual {v1, p1}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getDecorationLengthCrossAxis(Landroid/view/View;)I

    .line 18
    .line 19
    .line 20
    move-result v2

    .line 21
    sub-int/2addr p2, v2

    .line 22
    iget v2, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMinHeight:I

    .line 23
    .line 24
    invoke-static {p2, v2}, Ljava/lang/Math;->max(II)I

    .line 25
    .line 26
    .line 27
    move-result p2

    .line 28
    iget v0, v0, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mMaxHeight:I

    .line 29
    .line 30
    invoke-static {p2, v0}, Ljava/lang/Math;->min(II)I

    .line 31
    .line 32
    .line 33
    move-result p2

    .line 34
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 35
    .line 36
    check-cast v0, [J

    .line 37
    .line 38
    if-eqz v0, :cond_0

    .line 39
    .line 40
    aget-wide v2, v0, p3

    .line 41
    .line 42
    long-to-int v0, v2

    .line 43
    goto :goto_0

    .line 44
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getMeasuredWidth()I

    .line 45
    .line 46
    .line 47
    move-result v0

    .line 48
    :goto_0
    const/high16 v2, 0x40000000    # 2.0f

    .line 49
    .line 50
    invoke-static {v0, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 51
    .line 52
    .line 53
    move-result v0

    .line 54
    invoke-static {p2, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    .line 55
    .line 56
    .line 57
    move-result p2

    .line 58
    invoke-virtual {p1, v0, p2}, Landroid/view/View;->measure(II)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {p0, p3, v0, p2, p1}, Lcom/fsck/k9/mailstore/LocalStore$7;->updateMeasureCache(IIILandroid/view/View;)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1, p3}, Lcom/google/android/flexbox/FlexboxLayoutManager;->updateViewCache(Landroid/view/View;I)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public stretchViews(I)V
    .locals 16

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 6
    .line 7
    check-cast v2, Lcom/google/android/flexbox/FlexboxLayoutManager;

    .line 8
    .line 9
    iget-object v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 10
    .line 11
    invoke-virtual {v3}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 12
    .line 13
    .line 14
    move-result v3

    .line 15
    if-lt v1, v3, :cond_0

    .line 16
    .line 17
    goto/16 :goto_7

    .line 18
    .line 19
    :cond_0
    iget v3, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexDirection:I

    .line 20
    .line 21
    iget v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mAlignItems:I

    .line 22
    .line 23
    const-string v5, "Invalid flex direction: "

    .line 24
    .line 25
    const/4 v8, 0x4

    .line 26
    const/4 v9, 0x1

    .line 27
    if-ne v4, v8, :cond_a

    .line 28
    .line 29
    iget-object v4, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 30
    .line 31
    check-cast v4, [I

    .line 32
    .line 33
    if-eqz v4, :cond_1

    .line 34
    .line 35
    aget v1, v4, v1

    .line 36
    .line 37
    goto :goto_0

    .line 38
    :cond_1
    const/4 v1, 0x0

    .line 39
    :goto_0
    iget-object v4, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 40
    .line 41
    invoke-interface {v4}, Ljava/util/List;->size()I

    .line 42
    .line 43
    .line 44
    move-result v11

    .line 45
    :goto_1
    if-ge v1, v11, :cond_f

    .line 46
    .line 47
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    .line 48
    .line 49
    .line 50
    move-result-object v12

    .line 51
    check-cast v12, Lcom/google/android/flexbox/FlexLine;

    .line 52
    .line 53
    iget v13, v12, Lcom/google/android/flexbox/FlexLine;->mItemCount:I

    .line 54
    .line 55
    const/4 v14, 0x0

    .line 56
    :goto_2
    if-ge v14, v13, :cond_9

    .line 57
    .line 58
    iget v15, v12, Lcom/google/android/flexbox/FlexLine;->mFirstIndex:I

    .line 59
    .line 60
    add-int/2addr v15, v14

    .line 61
    iget-object v10, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mState:Landroidx/recyclerview/widget/RecyclerView$State;

    .line 62
    .line 63
    invoke-virtual {v10}, Landroidx/recyclerview/widget/RecyclerView$State;->getItemCount()I

    .line 64
    .line 65
    .line 66
    move-result v10

    .line 67
    if-lt v14, v10, :cond_2

    .line 68
    .line 69
    goto :goto_4

    .line 70
    :cond_2
    invoke-virtual {v2, v15}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    .line 71
    .line 72
    .line 73
    move-result-object v10

    .line 74
    if-eqz v10, :cond_8

    .line 75
    .line 76
    invoke-virtual {v10}, Landroid/view/View;->getVisibility()I

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    const/16 v7, 0x8

    .line 81
    .line 82
    if-ne v6, v7, :cond_3

    .line 83
    .line 84
    goto :goto_4

    .line 85
    :cond_3
    invoke-virtual {v10}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    .line 86
    .line 87
    .line 88
    move-result-object v6

    .line 89
    check-cast v6, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;

    .line 90
    .line 91
    iget v6, v6, Lcom/google/android/flexbox/FlexboxLayoutManager$LayoutParams;->mAlignSelf:I

    .line 92
    .line 93
    const/4 v7, -0x1

    .line 94
    if-eq v6, v7, :cond_4

    .line 95
    .line 96
    if-eq v6, v8, :cond_4

    .line 97
    .line 98
    goto :goto_4

    .line 99
    :cond_4
    if-eqz v3, :cond_7

    .line 100
    .line 101
    if-eq v3, v9, :cond_7

    .line 102
    .line 103
    const/4 v6, 0x2

    .line 104
    if-eq v3, v6, :cond_6

    .line 105
    .line 106
    const/4 v6, 0x3

    .line 107
    if-ne v3, v6, :cond_5

    .line 108
    .line 109
    goto :goto_3

    .line 110
    :cond_5
    invoke-static {v5, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 111
    .line 112
    .line 113
    move-result-object v0

    .line 114
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 115
    .line 116
    .line 117
    return-void

    .line 118
    :cond_6
    :goto_3
    iget v6, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 119
    .line 120
    invoke-virtual {v0, v10, v6, v15}, Lcom/fsck/k9/mailstore/LocalStore$7;->stretchViewHorizontally(Landroid/view/View;II)V

    .line 121
    .line 122
    .line 123
    goto :goto_4

    .line 124
    :cond_7
    iget v6, v12, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 125
    .line 126
    invoke-virtual {v0, v10, v6, v15}, Lcom/fsck/k9/mailstore/LocalStore$7;->stretchViewVertically(Landroid/view/View;II)V

    .line 127
    .line 128
    .line 129
    :cond_8
    :goto_4
    add-int/lit8 v14, v14, 0x1

    .line 130
    .line 131
    goto :goto_2

    .line 132
    :cond_9
    add-int/lit8 v1, v1, 0x1

    .line 133
    .line 134
    goto :goto_1

    .line 135
    :cond_a
    iget-object v1, v2, Lcom/google/android/flexbox/FlexboxLayoutManager;->mFlexLines:Ljava/util/List;

    .line 136
    .line 137
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 138
    .line 139
    .line 140
    move-result-object v1

    .line 141
    :cond_b
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 142
    .line 143
    .line 144
    move-result v4

    .line 145
    if-eqz v4, :cond_f

    .line 146
    .line 147
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 148
    .line 149
    .line 150
    move-result-object v4

    .line 151
    check-cast v4, Lcom/google/android/flexbox/FlexLine;

    .line 152
    .line 153
    iget-object v6, v4, Lcom/google/android/flexbox/FlexLine;->mIndicesAlignSelfStretch:Ljava/util/ArrayList;

    .line 154
    .line 155
    invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 156
    .line 157
    .line 158
    move-result-object v6

    .line 159
    :goto_5
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 160
    .line 161
    .line 162
    move-result v7

    .line 163
    if-eqz v7, :cond_b

    .line 164
    .line 165
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 166
    .line 167
    .line 168
    move-result-object v7

    .line 169
    check-cast v7, Ljava/lang/Integer;

    .line 170
    .line 171
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 172
    .line 173
    .line 174
    move-result v8

    .line 175
    invoke-virtual {v2, v8}, Lcom/google/android/flexbox/FlexboxLayoutManager;->getFlexItemAt(I)Landroid/view/View;

    .line 176
    .line 177
    .line 178
    move-result-object v8

    .line 179
    if-eqz v3, :cond_e

    .line 180
    .line 181
    if-eq v3, v9, :cond_e

    .line 182
    .line 183
    const/4 v10, 0x2

    .line 184
    const/4 v11, 0x3

    .line 185
    if-eq v3, v10, :cond_d

    .line 186
    .line 187
    if-ne v3, v11, :cond_c

    .line 188
    .line 189
    goto :goto_6

    .line 190
    :cond_c
    invoke-static {v5, v3}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;I)Ljava/lang/String;

    .line 191
    .line 192
    .line 193
    move-result-object v0

    .line 194
    invoke-static {v0}, Lcoil3/UriKt$$ExternalSyntheticBUOutline0;->m(Ljava/lang/String;)V

    .line 195
    .line 196
    .line 197
    return-void

    .line 198
    :cond_d
    :goto_6
    iget v12, v4, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 199
    .line 200
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 201
    .line 202
    .line 203
    move-result v7

    .line 204
    invoke-virtual {v0, v8, v12, v7}, Lcom/fsck/k9/mailstore/LocalStore$7;->stretchViewHorizontally(Landroid/view/View;II)V

    .line 205
    .line 206
    .line 207
    goto :goto_5

    .line 208
    :cond_e
    const/4 v10, 0x2

    .line 209
    const/4 v11, 0x3

    .line 210
    iget v12, v4, Lcom/google/android/flexbox/FlexLine;->mCrossSize:I

    .line 211
    .line 212
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 213
    .line 214
    .line 215
    move-result v7

    .line 216
    invoke-virtual {v0, v8, v12, v7}, Lcom/fsck/k9/mailstore/LocalStore$7;->stretchViewVertically(Landroid/view/View;II)V

    .line 217
    .line 218
    .line 219
    goto :goto_5

    .line 220
    :cond_f
    :goto_7
    return-void
.end method

.method public sync(Ljava/lang/String;Lcom/fsck/k9/backend/api/SyncConfig;Landroidx/room/RoomConnectionManager;)V
    .locals 28

    .line 1
    move-object/from16 v1, p1

    .line 2
    .line 3
    move-object/from16 v3, p2

    .line 4
    .line 5
    move-object/from16 v7, p3

    .line 6
    .line 7
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-object/from16 v0, p0

    .line 11
    .line 12
    iget-object v0, v0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 13
    .line 14
    move-object v2, v0

    .line 15
    check-cast v2, Lcom/fsck/k9/backend/imap/ImapSync;

    .line 16
    .line 17
    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 18
    .line 19
    .line 20
    const-string v0, "Message count "

    .line 21
    .line 22
    iget-object v4, v2, Lcom/fsck/k9/backend/imap/ImapSync;->accountName:Ljava/lang/Object;

    .line 23
    .line 24
    move-object v8, v4

    .line 25
    check-cast v8, Ljava/lang/String;

    .line 26
    .line 27
    const/4 v9, 0x2

    .line 28
    new-array v4, v9, [Ljava/lang/Object;

    .line 29
    .line 30
    const/4 v10, 0x0

    .line 31
    aput-object v8, v4, v10

    .line 32
    .line 33
    const/4 v11, 0x1

    .line 34
    aput-object v1, v4, v11

    .line 35
    .line 36
    const-string v5, "Synchronizing folder %s:%s"

    .line 37
    .line 38
    invoke-static {v5, v4}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 39
    .line 40
    .line 41
    :try_start_0
    const-string v4, "SYNC: About to process pending commands for account %s"

    .line 42
    .line 43
    new-array v5, v11, [Ljava/lang/Object;

    .line 44
    .line 45
    aput-object v8, v5, v10

    .line 46
    .line 47
    invoke-static {v4, v5}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 48
    .line 49
    .line 50
    const-string v4, "SYNC: About to get local folder %s"

    .line 51
    .line 52
    new-array v5, v11, [Ljava/lang/Object;

    .line 53
    .line 54
    aput-object v1, v5, v10

    .line 55
    .line 56
    invoke-static {v4, v5}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 57
    .line 58
    .line 59
    iget-object v4, v2, Lcom/fsck/k9/backend/imap/ImapSync;->backendStorage:Ljava/lang/Object;

    .line 60
    .line 61
    check-cast v4, Lokhttp3/Dispatcher;

    .line 62
    .line 63
    invoke-virtual {v4, v1}, Lokhttp3/Dispatcher;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mailstore/K9BackendFolder;

    .line 64
    .line 65
    .line 66
    move-result-object v5
    :try_end_0
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_0 .. :try_end_0} :catch_a
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_b
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 67
    :try_start_1
    iget-wide v14, v5, Lcom/fsck/k9/mailstore/K9BackendFolder;->folderId:J

    .line 68
    .line 69
    iget-object v4, v5, Lcom/fsck/k9/mailstore/K9BackendFolder;->messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 70
    .line 71
    invoke-virtual {v7, v1}, Landroidx/room/RoomConnectionManager;->syncStarted(Ljava/lang/String;)V

    .line 72
    .line 73
    .line 74
    invoke-virtual {v4, v14, v15}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->getAllMessagesAndEffectiveDates(J)Ljava/util/Map;

    .line 75
    .line 76
    .line 77
    move-result-object v6

    .line 78
    const-string v13, "SYNC: About to get remote folder %s"

    .line 79
    .line 80
    move/from16 v16, v10

    .line 81
    .line 82
    new-array v10, v11, [Ljava/lang/Object;

    .line 83
    .line 84
    aput-object v1, v10, v16

    .line 85
    .line 86
    invoke-static {v13, v10}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 87
    .line 88
    .line 89
    iget-object v10, v2, Lcom/fsck/k9/backend/imap/ImapSync;->imapStore:Ljava/lang/Object;

    .line 90
    .line 91
    check-cast v10, Lcom/fsck/k9/mail/store/pop3/Pop3Store;

    .line 92
    .line 93
    invoke-virtual {v10, v1}, Lcom/fsck/k9/mail/store/pop3/Pop3Store;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/store/pop3/Pop3Folder;

    .line 94
    .line 95
    .line 96
    move-result-object v10
    :try_end_1
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_1 .. :try_end_1} :catch_a
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_9
    .catchall {:try_start_1 .. :try_end_1} :catchall_3

    .line 97
    :try_start_2
    const-string v13, "SYNC: About to open remote folder %s"
    :try_end_2
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_7
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 98
    .line 99
    :try_start_3
    new-array v12, v11, [Ljava/lang/Object;

    .line 100
    .line 101
    aput-object v1, v12, v16
    :try_end_3
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_8
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .line 102
    .line 103
    :try_start_4
    invoke-static {v13, v12}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 104
    .line 105
    .line 106
    invoke-virtual {v10}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->open()V

    .line 107
    .line 108
    .line 109
    invoke-virtual {v7}, Landroidx/room/RoomConnectionManager;->syncAuthenticationSuccess()V

    .line 110
    .line 111
    .line 112
    iget v12, v10, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->messageCount:I

    .line 113
    .line 114
    iget v13, v5, Lcom/fsck/k9/mailstore/K9BackendFolder;->visibleLimit:I

    .line 115
    .line 116
    if-gez v13, :cond_0

    .line 117
    .line 118
    const/16 v13, 0x19

    .line 119
    .line 120
    :cond_0
    move/from16 v18, v11

    .line 121
    .line 122
    new-instance v11, Ljava/util/ArrayList;

    .line 123
    .line 124
    invoke-direct {v11}, Ljava/util/ArrayList;-><init>()V

    .line 125
    .line 126
    .line 127
    new-instance v9, Ljava/util/HashMap;

    .line 128
    .line 129
    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    .line 130
    .line 131
    .line 132
    move-object/from16 v20, v2

    .line 133
    .line 134
    const-string v2, "SYNC: Remote message count for folder %s is %d"

    .line 135
    .line 136
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 137
    .line 138
    .line 139
    move-result-object v21
    :try_end_4
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_4 .. :try_end_4} :catch_5
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_7
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 140
    move-object/from16 v22, v8

    .line 141
    .line 142
    move/from16 v23, v13

    .line 143
    .line 144
    const/4 v8, 0x2

    .line 145
    :try_start_5
    new-array v13, v8, [Ljava/lang/Object;

    .line 146
    .line 147
    aput-object v1, v13, v16

    .line 148
    .line 149
    aput-object v21, v13, v18
    :try_end_5
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_5 .. :try_end_5} :catch_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_6
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    .line 150
    .line 151
    :try_start_6
    invoke-static {v2, v13}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 152
    .line 153
    .line 154
    iget-object v2, v3, Lcom/fsck/k9/backend/api/SyncConfig;->earliestPollDate:Ljava/util/Date;
    :try_end_6
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_6 .. :try_end_6} :catch_5
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_6} :catch_4
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 155
    .line 156
    if-eqz v2, :cond_1

    .line 157
    .line 158
    :try_start_7
    invoke-virtual {v2}, Ljava/util/Date;->getTime()J

    .line 159
    .line 160
    .line 161
    move-result-wide v24

    .line 162
    goto :goto_2

    .line 163
    :catchall_0
    move-exception v0

    .line 164
    move-object v13, v10

    .line 165
    goto/16 :goto_14

    .line 166
    .line 167
    :catch_0
    move-exception v0

    .line 168
    :goto_0
    move-object v2, v0

    .line 169
    :goto_1
    move-object v13, v5

    .line 170
    goto/16 :goto_10

    .line 171
    .line 172
    :catch_1
    move-exception v0

    .line 173
    move-object v13, v10

    .line 174
    goto/16 :goto_12

    .line 175
    .line 176
    :cond_1
    const-wide/16 v24, 0x0

    .line 177
    .line 178
    :goto_2
    if-lez v12, :cond_7

    .line 179
    .line 180
    if-lez v23, :cond_3

    .line 181
    .line 182
    sub-int v0, v12, v23

    .line 183
    .line 184
    if-gez v0, :cond_2

    .line 185
    .line 186
    move/from16 v0, v16

    .line 187
    .line 188
    :cond_2
    add-int/lit8 v0, v0, 0x1

    .line 189
    .line 190
    goto :goto_3

    .line 191
    :cond_3
    move/from16 v0, v18

    .line 192
    .line 193
    :goto_3
    const-string v2, "SYNC: About to get messages %d through %d for folder %s"

    .line 194
    .line 195
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 196
    .line 197
    .line 198
    move-result-object v8

    .line 199
    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 200
    .line 201
    .line 202
    move-result-object v13

    .line 203
    move-object/from16 v21, v8

    .line 204
    .line 205
    move-object/from16 v23, v13

    .line 206
    .line 207
    const/4 v8, 0x3

    .line 208
    new-array v13, v8, [Ljava/lang/Object;

    .line 209
    .line 210
    aput-object v21, v13, v16

    .line 211
    .line 212
    aput-object v23, v13, v18

    .line 213
    .line 214
    const/16 v19, 0x2

    .line 215
    .line 216
    aput-object v1, v13, v19

    .line 217
    .line 218
    invoke-static {v2, v13}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 219
    .line 220
    .line 221
    new-instance v2, Ljava/util/concurrent/atomic/AtomicInteger;

    .line 222
    .line 223
    move/from16 v8, v16

    .line 224
    .line 225
    invoke-direct {v2, v8}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    .line 226
    .line 227
    .line 228
    invoke-virtual {v7, v1}, Landroidx/room/RoomConnectionManager;->syncHeadersStarted(Ljava/lang/String;)V

    .line 229
    .line 230
    .line 231
    invoke-virtual {v10, v0, v12}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->getMessages(II)Ljava/util/ArrayList;

    .line 232
    .line 233
    .line 234
    move-result-object v8

    .line 235
    invoke-virtual {v8}, Ljava/util/ArrayList;->size()I

    .line 236
    .line 237
    .line 238
    move-result v12

    .line 239
    invoke-virtual {v8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 240
    .line 241
    .line 242
    move-result-object v8

    .line 243
    :goto_4
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    .line 244
    .line 245
    .line 246
    move-result v13

    .line 247
    if-eqz v13, :cond_6

    .line 248
    .line 249
    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 250
    .line 251
    .line 252
    move-result-object v13

    .line 253
    check-cast v13, Lcom/fsck/k9/mail/store/pop3/Pop3Message;

    .line 254
    .line 255
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    .line 256
    .line 257
    .line 258
    move/from16 v21, v0

    .line 259
    .line 260
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 261
    .line 262
    .line 263
    move-result v0

    .line 264
    invoke-virtual {v7, v0, v1, v12}, Landroidx/room/RoomConnectionManager;->syncHeadersProgress(ILjava/lang/String;I)V

    .line 265
    .line 266
    .line 267
    iget-object v0, v13, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 268
    .line 269
    invoke-interface {v6, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 270
    .line 271
    .line 272
    move-result-object v0

    .line 273
    check-cast v0, Ljava/lang/Long;

    .line 274
    .line 275
    if-eqz v0, :cond_5

    .line 276
    .line 277
    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    .line 278
    .line 279
    .line 280
    move-result-wide v26

    .line 281
    cmp-long v0, v26, v24

    .line 282
    .line 283
    if-ltz v0, :cond_4

    .line 284
    .line 285
    goto :goto_6

    .line 286
    :cond_4
    :goto_5
    move/from16 v0, v21

    .line 287
    .line 288
    goto :goto_4

    .line 289
    :cond_5
    :goto_6
    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 290
    .line 291
    .line 292
    iget-object v0, v13, Lcom/fsck/k9/mail/internet/MimeMessage;->mUid:Ljava/lang/String;

    .line 293
    .line 294
    invoke-virtual {v9, v0, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 295
    .line 296
    .line 297
    goto :goto_5

    .line 298
    :cond_6
    move/from16 v21, v0

    .line 299
    .line 300
    const-string v0, "SYNC: Got %d messages for folder %s"

    .line 301
    .line 302
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    .line 303
    .line 304
    .line 305
    move-result v8

    .line 306
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 307
    .line 308
    .line 309
    move-result-object v8

    .line 310
    const/4 v12, 0x2

    .line 311
    new-array v13, v12, [Ljava/lang/Object;

    .line 312
    .line 313
    const/16 v16, 0x0

    .line 314
    .line 315
    aput-object v8, v13, v16

    .line 316
    .line 317
    aput-object v1, v13, v18

    .line 318
    .line 319
    invoke-static {v0, v13}, Lnet/thunderbird/core/logging/legacy/Log;->v(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 320
    .line 321
    .line 322
    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    .line 323
    .line 324
    .line 325
    move-result v0

    .line 326
    invoke-virtual {v9}, Ljava/util/HashMap;->size()I

    .line 327
    .line 328
    .line 329
    move-result v2

    .line 330
    invoke-virtual {v7, v0, v1, v2}, Landroidx/room/RoomConnectionManager;->syncHeadersFinished(ILjava/lang/String;I)V
    :try_end_7
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_7 .. :try_end_7} :catch_1
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_0
    .catchall {:try_start_7 .. :try_end_7} :catchall_0

    .line 331
    .line 332
    .line 333
    move/from16 v0, v21

    .line 334
    .line 335
    goto :goto_7

    .line 336
    :cond_7
    if-ltz v12, :cond_10

    .line 337
    .line 338
    move/from16 v0, v18

    .line 339
    .line 340
    :goto_7
    :try_start_8
    new-instance v2, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;

    .line 341
    .line 342
    invoke-direct {v2, v5}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;-><init>(Lcom/fsck/k9/mailstore/K9BackendFolder;)V

    .line 343
    .line 344
    .line 345
    iget-object v8, v4, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 346
    .line 347
    iget-object v8, v8, Lcom/fsck/k9/mailstore/LocalStore$1;->val$folders:Ljava/lang/Object;

    .line 348
    .line 349
    check-cast v8, Lcom/fsck/k9/storage/messages/K9MessageStore;

    .line 350
    .line 351
    invoke-virtual {v8, v14, v15, v2}, Lcom/fsck/k9/storage/messages/K9MessageStore;->getFolder(JLapp/k9mail/legacy/mailstore/FolderMapper;)Ljava/lang/Object;

    .line 352
    .line 353
    .line 354
    move-result-object v2

    .line 355
    check-cast v2, Lcom/fsck/k9/backend/api/BackendFolder$MoreMessages;
    :try_end_8
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_8 .. :try_end_8} :catch_5
    .catch Ljava/lang/Exception; {:try_start_8 .. :try_end_8} :catch_6
    .catchall {:try_start_8 .. :try_end_8} :catchall_2

    .line 356
    .line 357
    sget-object v8, Lcom/fsck/k9/backend/api/BackendFolder$MoreMessages;->UNKNOWN:Lcom/fsck/k9/backend/api/BackendFolder$MoreMessages;

    .line 358
    .line 359
    if-nez v2, :cond_8

    .line 360
    .line 361
    move-object v2, v8

    .line 362
    :cond_8
    :try_start_9
    iget-boolean v12, v3, Lcom/fsck/k9/backend/api/SyncConfig;->syncRemoteDeletions:Z
    :try_end_9
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_9 .. :try_end_9} :catch_5
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4
    .catchall {:try_start_9 .. :try_end_9} :catchall_2

    .line 363
    .line 364
    if-eqz v12, :cond_c

    .line 365
    .line 366
    :try_start_a
    new-instance v12, Ljava/util/ArrayList;

    .line 367
    .line 368
    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 369
    .line 370
    .line 371
    invoke-interface {v6}, Ljava/util/Map;->keySet()Ljava/util/Set;

    .line 372
    .line 373
    .line 374
    move-result-object v6

    .line 375
    invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    .line 376
    .line 377
    .line 378
    move-result-object v6

    .line 379
    :cond_9
    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    .line 380
    .line 381
    .line 382
    move-result v13

    .line 383
    if-eqz v13, :cond_a

    .line 384
    .line 385
    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 386
    .line 387
    .line 388
    move-result-object v13

    .line 389
    check-cast v13, Ljava/lang/String;

    .line 390
    .line 391
    invoke-virtual {v9, v13}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    .line 392
    .line 393
    .line 394
    move-result-object v21

    .line 395
    if-nez v21, :cond_9

    .line 396
    .line 397
    invoke-virtual {v12, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 398
    .line 399
    .line 400
    goto :goto_8

    .line 401
    :cond_a
    invoke-virtual {v12}, Ljava/util/ArrayList;->isEmpty()Z

    .line 402
    .line 403
    .line 404
    move-result v6

    .line 405
    if-nez v6, :cond_c

    .line 406
    .line 407
    iget-object v2, v4, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->messageStore:Lcom/fsck/k9/mailstore/LocalStore$1;

    .line 408
    .line 409
    invoke-virtual {v2, v14, v15, v12}, Lcom/fsck/k9/mailstore/LocalStore$1;->destroyMessages(JLjava/util/Collection;)V

    .line 410
    .line 411
    .line 412
    invoke-virtual {v12}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 413
    .line 414
    .line 415
    move-result-object v2

    .line 416
    :goto_9
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 417
    .line 418
    .line 419
    move-result v6

    .line 420
    if-eqz v6, :cond_b

    .line 421
    .line 422
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 423
    .line 424
    .line 425
    move-result-object v6

    .line 426
    check-cast v6, Ljava/lang/String;

    .line 427
    .line 428
    invoke-virtual {v7, v1, v6}, Landroidx/room/RoomConnectionManager;->syncRemovedMessage(Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .line 430
    .line 431
    goto :goto_9

    .line 432
    :cond_b
    move-object v2, v8

    .line 433
    :cond_c
    if-ne v2, v8, :cond_f

    .line 434
    .line 435
    sget-object v2, Lcom/fsck/k9/backend/api/BackendFolder$MoreMessages;->FALSE:Lcom/fsck/k9/backend/api/BackendFolder$MoreMessages;

    .line 436
    .line 437
    move/from16 v6, v18

    .line 438
    .line 439
    if-ne v0, v6, :cond_d

    .line 440
    .line 441
    invoke-virtual {v5, v2}, Lcom/fsck/k9/mailstore/K9BackendFolder;->setMoreMessages(Lcom/fsck/k9/backend/api/BackendFolder$MoreMessages;)V

    .line 442
    .line 443
    .line 444
    goto :goto_a

    .line 445
    :cond_d
    if-le v0, v6, :cond_e

    .line 446
    .line 447
    sget-object v2, Lcom/fsck/k9/backend/api/BackendFolder$MoreMessages;->TRUE:Lcom/fsck/k9/backend/api/BackendFolder$MoreMessages;

    .line 448
    .line 449
    :cond_e
    invoke-virtual {v5, v2}, Lcom/fsck/k9/mailstore/K9BackendFolder;->setMoreMessages(Lcom/fsck/k9/backend/api/BackendFolder$MoreMessages;)V
    :try_end_a
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_a .. :try_end_a} :catch_1
    .catch Ljava/lang/Exception; {:try_start_a .. :try_end_a} :catch_0
    .catchall {:try_start_a .. :try_end_a} :catchall_0

    .line 450
    .line 451
    .line 452
    :cond_f
    :goto_a
    move-object v0, v4

    .line 453
    move-object v4, v10

    .line 454
    move-object v6, v11

    .line 455
    move-object/from16 v2, v20

    .line 456
    .line 457
    :try_start_b
    invoke-virtual/range {v2 .. v7}, Lcom/fsck/k9/backend/imap/ImapSync;->downloadMessages(Lcom/fsck/k9/backend/api/SyncConfig;Lcom/fsck/k9/mail/store/pop3/Pop3Folder;Lcom/fsck/k9/mailstore/K9BackendFolder;Ljava/util/ArrayList;Landroidx/room/RoomConnectionManager;)I

    .line 458
    .line 459
    .line 460
    move-result v2

    .line 461
    invoke-virtual {v7, v1}, Landroidx/room/RoomConnectionManager;->folderStatusChanged(Ljava/lang/String;)V

    .line 462
    .line 463
    .line 464
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 465
    .line 466
    .line 467
    move-result-wide v8

    .line 468
    invoke-virtual {v0, v14, v15, v8, v9}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->setLastChecked(JJ)V

    .line 469
    .line 470
    .line 471
    const/4 v3, 0x0

    .line 472
    invoke-virtual {v0, v14, v15, v3}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->setStatus(JLjava/lang/String;)V

    .line 473
    .line 474
    .line 475
    const-string v0, "Done synchronizing folder %s:%s @ %tc with %d new messages"

    .line 476
    .line 477
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 478
    .line 479
    .line 480
    move-result-wide v8

    .line 481
    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 482
    .line 483
    .line 484
    move-result-object v3

    .line 485
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 486
    .line 487
    .line 488
    move-result-object v2

    .line 489
    const/4 v6, 0x4

    .line 490
    new-array v6, v6, [Ljava/lang/Object;

    .line 491
    .line 492
    const/16 v16, 0x0

    .line 493
    .line 494
    aput-object v22, v6, v16

    .line 495
    .line 496
    const/16 v18, 0x1

    .line 497
    .line 498
    aput-object v1, v6, v18

    .line 499
    .line 500
    const/4 v12, 0x2

    .line 501
    aput-object v3, v6, v12

    .line 502
    .line 503
    const/16 v17, 0x3

    .line 504
    .line 505
    aput-object v2, v6, v17

    .line 506
    .line 507
    invoke-static {v0, v6}, Lnet/thunderbird/core/logging/legacy/Log;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 508
    .line 509
    .line 510
    invoke-virtual {v7, v1}, Landroidx/room/RoomConnectionManager;->syncFinished(Ljava/lang/String;)V

    .line 511
    .line 512
    .line 513
    const-string v0, "Done synchronizing folder %s:%s"

    .line 514
    .line 515
    new-array v2, v12, [Ljava/lang/Object;

    .line 516
    .line 517
    const/16 v16, 0x0

    .line 518
    .line 519
    aput-object v22, v2, v16

    .line 520
    .line 521
    const/16 v18, 0x1

    .line 522
    .line 523
    aput-object v1, v2, v18

    .line 524
    .line 525
    invoke-static {v0, v2}, Lnet/thunderbird/core/logging/legacy/Log;->i(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_b
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_b .. :try_end_b} :catch_3
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_2
    .catchall {:try_start_b .. :try_end_b} :catchall_1

    .line 526
    .line 527
    .line 528
    invoke-virtual {v4}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->close()V

    .line 529
    .line 530
    .line 531
    return-void

    .line 532
    :catchall_1
    move-exception v0

    .line 533
    :goto_b
    move-object v13, v4

    .line 534
    goto/16 :goto_14

    .line 535
    .line 536
    :catch_2
    move-exception v0

    .line 537
    :goto_c
    move-object v2, v0

    .line 538
    move-object v10, v4

    .line 539
    goto/16 :goto_1

    .line 540
    .line 541
    :catch_3
    move-exception v0

    .line 542
    :goto_d
    move-object v13, v4

    .line 543
    goto/16 :goto_12

    .line 544
    .line 545
    :catchall_2
    move-exception v0

    .line 546
    move-object v4, v10

    .line 547
    goto :goto_b

    .line 548
    :catch_4
    move-exception v0

    .line 549
    :goto_e
    move-object v4, v10

    .line 550
    goto/16 :goto_0

    .line 551
    .line 552
    :catch_5
    move-exception v0

    .line 553
    move-object v4, v10

    .line 554
    goto :goto_d

    .line 555
    :catch_6
    move-exception v0

    .line 556
    :goto_f
    move-object v4, v10

    .line 557
    goto :goto_c

    .line 558
    :cond_10
    move-object v4, v10

    .line 559
    :try_start_c
    new-instance v2, Ljava/lang/Exception;

    .line 560
    .line 561
    new-instance v3, Ljava/lang/StringBuilder;

    .line 562
    .line 563
    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 564
    .line 565
    .line 566
    invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 567
    .line 568
    .line 569
    const-string v0, " for folder "

    .line 570
    .line 571
    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 572
    .line 573
    .line 574
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    .line 576
    .line 577
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 578
    .line 579
    .line 580
    move-result-object v0

    .line 581
    invoke-direct {v2, v0}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    .line 582
    .line 583
    .line 584
    throw v2
    :try_end_c
    .catch Lcom/fsck/k9/mail/AuthenticationFailedException; {:try_start_c .. :try_end_c} :catch_3
    .catch Ljava/lang/Exception; {:try_start_c .. :try_end_c} :catch_2
    .catchall {:try_start_c .. :try_end_c} :catchall_1

    .line 585
    :catch_7
    move-exception v0

    .line 586
    move-object/from16 v22, v8

    .line 587
    .line 588
    goto :goto_e

    .line 589
    :catch_8
    move-exception v0

    .line 590
    move-object/from16 v22, v8

    .line 591
    .line 592
    goto :goto_f

    .line 593
    :catchall_3
    move-exception v0

    .line 594
    const/4 v3, 0x0

    .line 595
    move-object v13, v3

    .line 596
    goto/16 :goto_14

    .line 597
    .line 598
    :catch_9
    move-exception v0

    .line 599
    move-object/from16 v22, v8

    .line 600
    .line 601
    const/4 v3, 0x0

    .line 602
    move-object v2, v0

    .line 603
    move-object v10, v3

    .line 604
    goto/16 :goto_1

    .line 605
    .line 606
    :catch_a
    move-exception v0

    .line 607
    const/4 v3, 0x0

    .line 608
    move-object v13, v3

    .line 609
    goto :goto_12

    .line 610
    :catch_b
    move-exception v0

    .line 611
    move-object/from16 v22, v8

    .line 612
    .line 613
    const/4 v3, 0x0

    .line 614
    move-object v2, v0

    .line 615
    move-object v10, v3

    .line 616
    move-object v13, v10

    .line 617
    :goto_10
    :try_start_d
    const-string v0, "synchronizeMailbox"

    .line 618
    .line 619
    const/4 v8, 0x0

    .line 620
    new-array v3, v8, [Ljava/lang/Object;

    .line 621
    .line 622
    invoke-static {v2, v0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 623
    .line 624
    .line 625
    invoke-static {v2}, Lokhttp3/CacheControl$Companion;->getRootCauseMessage(Ljava/lang/Exception;)Ljava/lang/String;

    .line 626
    .line 627
    .line 628
    move-result-object v0

    .line 629
    if-nez v0, :cond_11

    .line 630
    .line 631
    const-string v0, ""
    :try_end_d
    .catchall {:try_start_d .. :try_end_d} :catchall_0

    .line 632
    .line 633
    :cond_11
    move-object v3, v0

    .line 634
    if-eqz v13, :cond_12

    .line 635
    .line 636
    :try_start_e
    iget-object v0, v13, Lcom/fsck/k9/mailstore/K9BackendFolder;->messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 637
    .line 638
    iget-wide v4, v13, Lcom/fsck/k9/mailstore/K9BackendFolder;->folderId:J

    .line 639
    .line 640
    invoke-virtual {v0, v4, v5, v3}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->setStatus(JLjava/lang/String;)V

    .line 641
    .line 642
    .line 643
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 644
    .line 645
    .line 646
    move-result-wide v4

    .line 647
    iget-object v0, v13, Lcom/fsck/k9/mailstore/K9BackendFolder;->messageStore:Lapp/k9mail/legacy/mailstore/ListenableMessageStore;

    .line 648
    .line 649
    iget-wide v8, v13, Lcom/fsck/k9/mailstore/K9BackendFolder;->folderId:J

    .line 650
    .line 651
    invoke-virtual {v0, v8, v9, v4, v5}, Lapp/k9mail/legacy/mailstore/ListenableMessageStore;->setLastChecked(JJ)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_e .. :try_end_e} :catch_c
    .catchall {:try_start_e .. :try_end_e} :catchall_0

    .line 652
    .line 653
    .line 654
    goto :goto_11

    .line 655
    :catch_c
    move-exception v0

    .line 656
    :try_start_f
    const-string v4, "Could not set last checked on folder %s:%s"

    .line 657
    .line 658
    const/4 v12, 0x2

    .line 659
    new-array v5, v12, [Ljava/lang/Object;

    .line 660
    .line 661
    const/16 v16, 0x0

    .line 662
    .line 663
    aput-object v22, v5, v16

    .line 664
    .line 665
    const/16 v18, 0x1

    .line 666
    .line 667
    aput-object v1, v5, v18

    .line 668
    .line 669
    invoke-static {v0, v4, v5}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 670
    .line 671
    .line 672
    :cond_12
    :goto_11
    invoke-virtual {v7, v1, v3, v2}, Landroidx/room/RoomConnectionManager;->syncFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V

    .line 673
    .line 674
    .line 675
    const-string v0, "Failed synchronizing folder %s:%s @ %tc"

    .line 676
    .line 677
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    .line 678
    .line 679
    .line 680
    move-result-wide v2

    .line 681
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 682
    .line 683
    .line 684
    move-result-object v2

    .line 685
    const/4 v8, 0x3

    .line 686
    new-array v3, v8, [Ljava/lang/Object;

    .line 687
    .line 688
    const/16 v16, 0x0

    .line 689
    .line 690
    aput-object v22, v3, v16

    .line 691
    .line 692
    const/16 v18, 0x1

    .line 693
    .line 694
    aput-object v1, v3, v18

    .line 695
    .line 696
    const/16 v19, 0x2

    .line 697
    .line 698
    aput-object v2, v3, v19

    .line 699
    .line 700
    invoke-static {v0, v3}, Lnet/thunderbird/core/logging/legacy/Log;->e(Ljava/lang/String;[Ljava/lang/Object;)V
    :try_end_f
    .catchall {:try_start_f .. :try_end_f} :catchall_0

    .line 701
    .line 702
    .line 703
    if-eqz v10, :cond_13

    .line 704
    .line 705
    invoke-virtual {v10}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->close()V

    .line 706
    .line 707
    .line 708
    goto :goto_13

    .line 709
    :goto_12
    :try_start_10
    const-string v2, "Authentication failure"

    .line 710
    .line 711
    invoke-virtual {v7, v1, v2, v0}, Landroidx/room/RoomConnectionManager;->syncFailed(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Exception;)V
    :try_end_10
    .catchall {:try_start_10 .. :try_end_10} :catchall_4

    .line 712
    .line 713
    .line 714
    if-eqz v13, :cond_13

    .line 715
    .line 716
    invoke-virtual {v13}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->close()V

    .line 717
    .line 718
    .line 719
    :cond_13
    :goto_13
    return-void

    .line 720
    :catchall_4
    move-exception v0

    .line 721
    :goto_14
    if-eqz v13, :cond_14

    .line 722
    .line 723
    invoke-virtual {v13}, Lcom/fsck/k9/mail/store/pop3/Pop3Folder;->close()V

    .line 724
    .line 725
    .line 726
    :cond_14
    throw v0
.end method

.method public toJson()Lorg/json/JSONObject;
    .locals 3

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$queryString:Ljava/lang/Object;

    .line 7
    .line 8
    check-cast v1, Landroid/net/Uri;

    .line 9
    .line 10
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 11
    .line 12
    .line 13
    move-result-object v1

    .line 14
    const-string v2, "authorizationEndpoint"

    .line 15
    .line 16
    invoke-static {v0, v2, v1}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 17
    .line 18
    .line 19
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 20
    .line 21
    check-cast v1, Landroid/net/Uri;

    .line 22
    .line 23
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "tokenEndpoint"

    .line 28
    .line 29
    invoke-static {v0, v2, v1}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 30
    .line 31
    .line 32
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v1, Landroid/net/Uri;

    .line 35
    .line 36
    if-eqz v1, :cond_0

    .line 37
    .line 38
    const-string v2, "registrationEndpoint"

    .line 39
    .line 40
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 41
    .line 42
    .line 43
    move-result-object v1

    .line 44
    invoke-static {v0, v2, v1}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 45
    .line 46
    .line 47
    :cond_0
    iget-object v1, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$folder:Ljava/lang/Object;

    .line 48
    .line 49
    check-cast v1, Landroid/net/Uri;

    .line 50
    .line 51
    if-eqz v1, :cond_1

    .line 52
    .line 53
    const-string v2, "endSessionEndpoint"

    .line 54
    .line 55
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    .line 56
    .line 57
    .line 58
    move-result-object v1

    .line 59
    invoke-static {v0, v2, v1}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Ljava/lang/String;)V

    .line 60
    .line 61
    .line 62
    :cond_1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 63
    .line 64
    check-cast p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;

    .line 65
    .line 66
    if-eqz p0, :cond_2

    .line 67
    .line 68
    const-string v1, "discoveryDoc"

    .line 69
    .line 70
    iget-object p0, p0, Lnet/openid/appauth/AuthorizationServiceDiscovery;->docJson:Lorg/json/JSONObject;

    .line 71
    .line 72
    invoke-static {v0, v1, p0}, Lkotlinx/atomicfu/AtomicFU;->put(Lorg/json/JSONObject;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 73
    .line 74
    .line 75
    :cond_2
    return-object v0
.end method

.method public tryEmit(Landroidx/camera/camera2/pipe/graph/GraphCommand;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast p0, Lkotlinx/coroutines/channels/BufferedChannel;

    .line 4
    .line 5
    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/SendChannel;->trySend-JP2dKIU(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    .line 7
    .line 8
    move-result-object p0

    .line 9
    instance-of p0, p0, Lkotlinx/coroutines/channels/ChannelResult$Failed;

    .line 10
    .line 11
    xor-int/lit8 p0, p0, 0x1

    .line 12
    .line 13
    return p0
.end method

.method public updateMeasureCache(IIILandroid/view/View;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, [J

    .line 4
    .line 5
    const-wide v1, 0xffffffffL

    .line 6
    .line 7
    .line 8
    .line 9
    .line 10
    const/16 v3, 0x20

    .line 11
    .line 12
    if-eqz v0, :cond_0

    .line 13
    .line 14
    int-to-long v4, p3

    .line 15
    shl-long/2addr v4, v3

    .line 16
    int-to-long p2, p2

    .line 17
    and-long/2addr p2, v1

    .line 18
    or-long/2addr p2, v4

    .line 19
    aput-wide p2, v0, p1

    .line 20
    .line 21
    :cond_0
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 22
    .line 23
    check-cast p0, [J

    .line 24
    .line 25
    if-eqz p0, :cond_1

    .line 26
    .line 27
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredWidth()I

    .line 28
    .line 29
    .line 30
    move-result p2

    .line 31
    invoke-virtual {p4}, Landroid/view/View;->getMeasuredHeight()I

    .line 32
    .line 33
    .line 34
    move-result p3

    .line 35
    int-to-long p3, p3

    .line 36
    shl-long/2addr p3, v3

    .line 37
    int-to-long v3, p2

    .line 38
    and-long/2addr v1, v3

    .line 39
    or-long/2addr p3, v1

    .line 40
    aput-wide p3, p0, p1

    .line 41
    .line 42
    :cond_1
    return-void
.end method

.method public uploadMessage(Ljava/lang/String;Lcom/fsck/k9/mailstore/LocalMessage;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 2
    .line 3
    .line 4
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    .line 5
    .line 6
    const-string p1, "not supported"

    .line 7
    .line 8
    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    .line 9
    .line 10
    .line 11
    throw p0
.end method

.method public verifyAllDestinations()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$messages:Ljava/lang/Object;

    .line 2
    .line 3
    check-cast v0, Ljava/util/ArrayList;

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    .line 6
    .line 7
    .line 8
    move-result-object v0

    .line 9
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    .line 10
    .line 11
    .line 12
    move-result v1

    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 16
    .line 17
    .line 18
    move-result-object v1

    .line 19
    check-cast v1, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;

    .line 20
    .line 21
    iget v1, v1, Landroidx/navigation/NavDeepLinkBuilder$DeepLinkDestination;->destinationId:I

    .line 22
    .line 23
    invoke-virtual {p0, v1}, Lcom/fsck/k9/mailstore/LocalStore$7;->findDestination(I)Landroidx/navigation/NavDestination;

    .line 24
    .line 25
    .line 26
    move-result-object v2

    .line 27
    if-eqz v2, :cond_0

    .line 28
    .line 29
    goto :goto_0

    .line 30
    :cond_0
    sget v0, Landroidx/navigation/NavDestination;->$r8$clinit:I

    .line 31
    .line 32
    iget-object v0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->val$placeHolders:Ljava/lang/Object;

    .line 33
    .line 34
    check-cast v0, Landroidx/navigation/internal/NavContext;

    .line 35
    .line 36
    invoke-static {v0, v1}, Landroidx/work/OperationKt;->getDisplayName(Landroidx/navigation/internal/NavContext;I)Ljava/lang/String;

    .line 37
    .line 38
    .line 39
    move-result-object v0

    .line 40
    const-string v1, "Navigation destination "

    .line 41
    .line 42
    const-string v2, " cannot be found in the navigation graph "

    .line 43
    .line 44
    invoke-static {v1, v0, v2}, Landroidx/camera/camera2/pipe/CameraDevices$-CC;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    iget-object p0, p0, Lcom/fsck/k9/mailstore/LocalStore$7;->this$0:Ljava/lang/Object;

    .line 49
    .line 50
    check-cast p0, Landroidx/navigation/NavGraph;

    .line 51
    .line 52
    invoke-static {p0, v0}, Lkotlin/text/Regex$$ExternalSyntheticBUOutline0;->m(Ljava/lang/Object;Ljava/lang/StringBuilder;)V

    .line 53
    .line 54
    .line 55
    :cond_1
    return-void
.end method
