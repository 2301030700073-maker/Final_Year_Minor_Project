.class public final Landroidx/datastore/core/FileStorage;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final activeFiles:Ljava/util/LinkedHashSet;

.field public static final activeFilesLock:Ljava/lang/Object;


# instance fields
.field public final coordinatorProducer:Lkotlin/jvm/functions/Function1;

.field public final produceFile:Lkotlin/jvm/functions/Function0;

.field public final serializer:Landroidx/datastore/preferences/core/PreferencesFileSerializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Landroidx/datastore/core/FileStorage;->activeFiles:Ljava/util/LinkedHashSet;

    .line 7
    .line 8
    new-instance v0, Ljava/lang/Object;

    .line 9
    .line 10
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 11
    .line 12
    .line 13
    sput-object v0, Landroidx/datastore/core/FileStorage;->activeFilesLock:Ljava/lang/Object;

    .line 14
    .line 15
    return-void
.end method

.method public constructor <init>(Landroidx/datastore/preferences/core/PreferencesFileSerializer;Lkotlin/jvm/functions/Function0;)V
    .locals 2

    .line 1
    new-instance v0, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;

    .line 2
    .line 3
    const/4 v1, 0x6

    .line 4
    invoke-direct {v0, v1}, Landroidx/room/RoomDatabase$$ExternalSyntheticLambda0;-><init>(I)V

    .line 5
    .line 6
    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    .line 9
    .line 10
    iput-object p1, p0, Landroidx/datastore/core/FileStorage;->serializer:Landroidx/datastore/preferences/core/PreferencesFileSerializer;

    .line 11
    .line 12
    iput-object v0, p0, Landroidx/datastore/core/FileStorage;->coordinatorProducer:Lkotlin/jvm/functions/Function1;

    .line 13
    .line 14
    iput-object p2, p0, Landroidx/datastore/core/FileStorage;->produceFile:Lkotlin/jvm/functions/Function0;

    .line 15
    .line 16
    return-void
.end method
