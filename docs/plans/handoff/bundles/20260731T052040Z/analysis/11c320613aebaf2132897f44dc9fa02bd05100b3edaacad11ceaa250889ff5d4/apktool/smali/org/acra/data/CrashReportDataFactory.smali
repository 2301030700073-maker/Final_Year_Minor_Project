.class public final Lorg/acra/data/CrashReportDataFactory;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final collectors:Ljava/util/List;

.field public final config:Lorg/acra/config/CoreConfiguration;

.field public final context:Lorg/schabi/newpipe/App;


# direct methods
.method public constructor <init>(Lorg/schabi/newpipe/App;Lorg/acra/config/CoreConfiguration;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lorg/acra/data/CrashReportDataFactory;->context:Lorg/schabi/newpipe/App;

    .line 5
    .line 6
    iput-object p2, p0, Lorg/acra/data/CrashReportDataFactory;->config:Lorg/acra/config/CoreConfiguration;

    .line 7
    .line 8
    invoke-virtual {p2}, Lorg/acra/config/CoreConfiguration;->getPluginLoader()Lorg/acra/plugins/PluginLoader;

    .line 9
    .line 10
    .line 11
    move-result-object p1

    .line 12
    const-class v0, Lorg/acra/collector/Collector;

    .line 13
    .line 14
    check-cast p1, Lorg/acra/plugins/ServicePluginLoader;

    .line 15
    .line 16
    invoke-virtual {p1, p2, v0}, Lorg/acra/plugins/ServicePluginLoader;->loadEnabled(Lorg/acra/config/CoreConfiguration;Ljava/lang/Class;)Ljava/util/ArrayList;

    .line 17
    .line 18
    .line 19
    move-result-object p1

    .line 20
    new-instance p2, Landroidx/viewpager/widget/ViewPager$1;

    .line 21
    .line 22
    invoke-direct {p2, p0}, Landroidx/viewpager/widget/ViewPager$1;-><init>(Lorg/acra/data/CrashReportDataFactory;)V

    .line 23
    .line 24
    .line 25
    invoke-static {p1, p2}, Lkotlin/collections/CollectionsKt;->sortedWith(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    .line 26
    .line 27
    .line 28
    move-result-object p1

    .line 29
    iput-object p1, p0, Lorg/acra/data/CrashReportDataFactory;->collectors:Ljava/util/List;

    .line 30
    .line 31
    return-void
.end method
