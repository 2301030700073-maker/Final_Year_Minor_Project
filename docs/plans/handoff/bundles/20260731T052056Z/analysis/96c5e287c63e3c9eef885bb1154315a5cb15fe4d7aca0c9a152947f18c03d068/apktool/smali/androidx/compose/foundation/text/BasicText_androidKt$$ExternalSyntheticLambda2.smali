.class public final synthetic Landroidx/compose/foundation/text/BasicText_androidKt$$ExternalSyntheticLambda2;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Landroidx/compose/ui/text/TextStyle;

.field public final synthetic f$1:Landroidx/compose/ui/unit/LayoutDirection;

.field public final synthetic f$2:Ljava/util/List;

.field public final synthetic f$3:Landroidx/compose/ui/text/AnnotatedString;

.field public final synthetic f$4:Landroidx/compose/ui/unit/Density;

.field public final synthetic f$5:Landroidx/compose/ui/text/font/FontFamily$Resolver;


# direct methods
.method public synthetic constructor <init>(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;Ljava/util/List;Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Landroidx/compose/foundation/text/BasicText_androidKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/ui/text/TextStyle;

    .line 5
    .line 6
    iput-object p2, p0, Landroidx/compose/foundation/text/BasicText_androidKt$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/ui/unit/LayoutDirection;

    .line 7
    .line 8
    iput-object p3, p0, Landroidx/compose/foundation/text/BasicText_androidKt$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    .line 9
    .line 10
    iput-object p4, p0, Landroidx/compose/foundation/text/BasicText_androidKt$$ExternalSyntheticLambda2;->f$3:Landroidx/compose/ui/text/AnnotatedString;

    .line 11
    .line 12
    iput-object p5, p0, Landroidx/compose/foundation/text/BasicText_androidKt$$ExternalSyntheticLambda2;->f$4:Landroidx/compose/ui/unit/Density;

    .line 13
    .line 14
    iput-object p6, p0, Landroidx/compose/foundation/text/BasicText_androidKt$$ExternalSyntheticLambda2;->f$5:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    iget-object v0, p0, Landroidx/compose/foundation/text/BasicText_androidKt$$ExternalSyntheticLambda2;->f$0:Landroidx/compose/ui/text/TextStyle;

    .line 2
    .line 3
    iget-object v1, p0, Landroidx/compose/foundation/text/BasicText_androidKt$$ExternalSyntheticLambda2;->f$1:Landroidx/compose/ui/unit/LayoutDirection;

    .line 4
    .line 5
    iget-object v3, p0, Landroidx/compose/foundation/text/BasicText_androidKt$$ExternalSyntheticLambda2;->f$3:Landroidx/compose/ui/text/AnnotatedString;

    .line 6
    .line 7
    iget-object v6, p0, Landroidx/compose/foundation/text/BasicText_androidKt$$ExternalSyntheticLambda2;->f$4:Landroidx/compose/ui/unit/Density;

    .line 8
    .line 9
    iget-object v7, p0, Landroidx/compose/foundation/text/BasicText_androidKt$$ExternalSyntheticLambda2;->f$5:Landroidx/compose/ui/text/font/FontFamily$Resolver;

    .line 10
    .line 11
    const-string v2, "BackgroundTextMeasurement"

    .line 12
    .line 13
    invoke-static {v2}, Landroid/os/Trace;->beginSection(Ljava/lang/String;)V

    .line 14
    .line 15
    .line 16
    :try_start_0
    invoke-static {}, Landroidx/compose/runtime/snapshots/SnapshotKt;->currentSnapshot()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 17
    .line 18
    .line 19
    move-result-object v2

    .line 20
    instance-of v4, v2, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 21
    .line 22
    const/4 v5, 0x0

    .line 23
    if-eqz v4, :cond_0

    .line 24
    .line 25
    check-cast v2, Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 26
    .line 27
    goto :goto_0

    .line 28
    :cond_0
    move-object v2, v5

    .line 29
    :goto_0
    if-eqz v2, :cond_2

    .line 30
    .line 31
    invoke-virtual {v2, v5, v5}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->takeNestedMutableSnapshot(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/snapshots/MutableSnapshot;

    .line 32
    .line 33
    .line 34
    move-result-object v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_3

    .line 35
    if-eqz v8, :cond_2

    .line 36
    .line 37
    :try_start_1
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/Snapshot;->makeCurrent()Landroidx/compose/runtime/snapshots/Snapshot;

    .line 38
    .line 39
    .line 40
    move-result-object v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 41
    :try_start_2
    invoke-static {v0, v1}, Landroidx/compose/ui/text/ParagraphKt;->resolveDefaults(Landroidx/compose/ui/text/TextStyle;Landroidx/compose/ui/unit/LayoutDirection;)Landroidx/compose/ui/text/TextStyle;

    .line 42
    .line 43
    .line 44
    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 45
    iget-object p0, p0, Landroidx/compose/foundation/text/BasicText_androidKt$$ExternalSyntheticLambda2;->f$2:Ljava/util/List;

    .line 46
    .line 47
    if-nez p0, :cond_1

    .line 48
    .line 49
    :try_start_3
    sget-object p0, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 50
    .line 51
    :cond_1
    move-object v5, p0

    .line 52
    goto :goto_1

    .line 53
    :catchall_0
    move-exception v0

    .line 54
    move-object p0, v0

    .line 55
    goto :goto_2

    .line 56
    :goto_1
    new-instance v2, Lokhttp3/Request$Builder;

    .line 57
    .line 58
    invoke-direct/range {v2 .. v7}, Lokhttp3/Request$Builder;-><init>(Landroidx/compose/ui/text/AnnotatedString;Landroidx/compose/ui/text/TextStyle;Ljava/util/List;Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/text/font/FontFamily$Resolver;)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->getMaxIntrinsicWidth()F

    .line 62
    .line 63
    .line 64
    invoke-virtual {v2}, Lokhttp3/Request$Builder;->getMinIntrinsicWidth()F
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 65
    .line 66
    .line 67
    :try_start_4
    invoke-static {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 68
    .line 69
    .line 70
    :try_start_5
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->apply()Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;

    .line 71
    .line 72
    .line 73
    move-result-object p0

    .line 74
    invoke-virtual {p0}, Landroidx/compose/runtime/snapshots/SnapshotId_jvmKt;->check()V

    .line 75
    .line 76
    .line 77
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->dispose()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    .line 78
    .line 79
    .line 80
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 81
    .line 82
    .line 83
    return-void

    .line 84
    :catchall_1
    move-exception v0

    .line 85
    move-object p0, v0

    .line 86
    goto :goto_3

    .line 87
    :goto_2
    :try_start_6
    invoke-static {v9}, Landroidx/compose/runtime/snapshots/Snapshot;->restoreCurrent(Landroidx/compose/runtime/snapshots/Snapshot;)V

    .line 88
    .line 89
    .line 90
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    .line 91
    :goto_3
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    .line 92
    :catchall_2
    move-exception v0

    .line 93
    move-object p0, v0

    .line 94
    :try_start_8
    invoke-virtual {v8}, Landroidx/compose/runtime/snapshots/MutableSnapshot;->dispose()V

    .line 95
    .line 96
    .line 97
    throw p0

    .line 98
    :catchall_3
    move-exception v0

    .line 99
    move-object p0, v0

    .line 100
    goto :goto_4

    .line 101
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    .line 102
    .line 103
    const-string v0, "Cannot create a mutable snapshot of an read-only snapshot"

    .line 104
    .line 105
    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .line 106
    .line 107
    .line 108
    throw p0
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_3

    .line 109
    :goto_4
    invoke-static {}, Landroid/os/Trace;->endSection()V

    .line 110
    .line 111
    .line 112
    throw p0
.end method
