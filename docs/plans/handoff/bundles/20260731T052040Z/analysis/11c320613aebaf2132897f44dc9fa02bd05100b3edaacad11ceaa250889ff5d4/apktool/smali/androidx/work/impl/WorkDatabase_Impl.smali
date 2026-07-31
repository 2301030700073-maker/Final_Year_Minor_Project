.class public final Landroidx/work/impl/WorkDatabase_Impl;
.super Landroidx/work/impl/WorkDatabase;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# instance fields
.field public final _dependencyDao:Lkotlin/SynchronizedLazyImpl;

.field public final _preferenceDao:Lkotlin/SynchronizedLazyImpl;

.field public final _systemIdInfoDao:Lkotlin/SynchronizedLazyImpl;

.field public final _workNameDao:Lkotlin/SynchronizedLazyImpl;

.field public final _workProgressDao:Lkotlin/SynchronizedLazyImpl;

.field public final _workSpecDao:Lkotlin/SynchronizedLazyImpl;

.field public final _workTagDao:Lkotlin/SynchronizedLazyImpl;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Landroidx/work/impl/WorkDatabase;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Landroidx/work/impl/WorkDatabase_Impl$$ExternalSyntheticLambda0;

    .line 5
    .line 6
    const/4 v1, 0x0

    .line 7
    invoke-direct {v0, p0, v1}, Landroidx/work/impl/WorkDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    .line 8
    .line 9
    .line 10
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 11
    .line 12
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 13
    .line 14
    .line 15
    iput-object v1, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Lkotlin/SynchronizedLazyImpl;

    .line 16
    .line 17
    new-instance v0, Landroidx/work/impl/WorkDatabase_Impl$$ExternalSyntheticLambda0;

    .line 18
    .line 19
    const/4 v1, 0x1

    .line 20
    invoke-direct {v0, p0, v1}, Landroidx/work/impl/WorkDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    .line 21
    .line 22
    .line 23
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 24
    .line 25
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 26
    .line 27
    .line 28
    iput-object v1, p0, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Lkotlin/SynchronizedLazyImpl;

    .line 29
    .line 30
    new-instance v0, Landroidx/work/impl/WorkDatabase_Impl$$ExternalSyntheticLambda0;

    .line 31
    .line 32
    const/4 v1, 0x2

    .line 33
    invoke-direct {v0, p0, v1}, Landroidx/work/impl/WorkDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 37
    .line 38
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 39
    .line 40
    .line 41
    iput-object v1, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Lkotlin/SynchronizedLazyImpl;

    .line 42
    .line 43
    new-instance v0, Landroidx/work/impl/WorkDatabase_Impl$$ExternalSyntheticLambda0;

    .line 44
    .line 45
    const/4 v1, 0x3

    .line 46
    invoke-direct {v0, p0, v1}, Landroidx/work/impl/WorkDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    .line 47
    .line 48
    .line 49
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 50
    .line 51
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 52
    .line 53
    .line 54
    iput-object v1, p0, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Lkotlin/SynchronizedLazyImpl;

    .line 55
    .line 56
    new-instance v0, Landroidx/work/impl/WorkDatabase_Impl$$ExternalSyntheticLambda0;

    .line 57
    .line 58
    const/4 v1, 0x4

    .line 59
    invoke-direct {v0, p0, v1}, Landroidx/work/impl/WorkDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    .line 60
    .line 61
    .line 62
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 63
    .line 64
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 65
    .line 66
    .line 67
    iput-object v1, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Lkotlin/SynchronizedLazyImpl;

    .line 68
    .line 69
    new-instance v0, Landroidx/work/impl/WorkDatabase_Impl$$ExternalSyntheticLambda0;

    .line 70
    .line 71
    const/4 v1, 0x5

    .line 72
    invoke-direct {v0, p0, v1}, Landroidx/work/impl/WorkDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    .line 73
    .line 74
    .line 75
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 76
    .line 77
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 78
    .line 79
    .line 80
    iput-object v1, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workProgressDao:Lkotlin/SynchronizedLazyImpl;

    .line 81
    .line 82
    new-instance v0, Landroidx/work/impl/WorkDatabase_Impl$$ExternalSyntheticLambda0;

    .line 83
    .line 84
    const/4 v1, 0x6

    .line 85
    invoke-direct {v0, p0, v1}, Landroidx/work/impl/WorkDatabase_Impl$$ExternalSyntheticLambda0;-><init>(Landroidx/work/impl/WorkDatabase_Impl;I)V

    .line 86
    .line 87
    .line 88
    new-instance v1, Lkotlin/SynchronizedLazyImpl;

    .line 89
    .line 90
    invoke-direct {v1, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 91
    .line 92
    .line 93
    iput-object v1, p0, Landroidx/work/impl/WorkDatabase_Impl;->_preferenceDao:Lkotlin/SynchronizedLazyImpl;

    .line 94
    .line 95
    new-instance v0, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;

    .line 96
    .line 97
    const/16 v1, 0x10

    .line 98
    .line 99
    invoke-direct {v0, p0, v1}, Lcoil3/disk/UtilsKt$$ExternalSyntheticLambda0;-><init>(Ljava/lang/Object;I)V

    .line 100
    .line 101
    .line 102
    new-instance p0, Lkotlin/SynchronizedLazyImpl;

    .line 103
    .line 104
    invoke-direct {p0, v0}, Lkotlin/SynchronizedLazyImpl;-><init>(Lkotlin/jvm/functions/Function0;)V

    .line 105
    .line 106
    .line 107
    return-void
.end method


# virtual methods
.method public final createAutoMigrations(Ljava/util/LinkedHashMap;)Ljava/util/List;
    .locals 3

    .line 1
    new-instance p0, Ljava/util/ArrayList;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance p1, Landroidx/work/impl/Migration_1_2;

    .line 7
    .line 8
    const/16 v0, 0xe

    .line 9
    .line 10
    const/16 v1, 0xa

    .line 11
    .line 12
    const/16 v2, 0xd

    .line 13
    .line 14
    invoke-direct {p1, v2, v0, v1}, Landroidx/work/impl/Migration_1_2;-><init>(III)V

    .line 15
    .line 16
    .line 17
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 18
    .line 19
    .line 20
    new-instance p1, Landroidx/room/migration/MigrationImpl;

    .line 21
    .line 22
    const/4 v0, 0x1

    .line 23
    invoke-direct {p1, v0}, Landroidx/room/migration/MigrationImpl;-><init>(I)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 27
    .line 28
    .line 29
    new-instance p1, Landroidx/work/impl/Migration_1_2;

    .line 30
    .line 31
    const/16 v0, 0xb

    .line 32
    .line 33
    const/16 v1, 0x10

    .line 34
    .line 35
    const/16 v2, 0x11

    .line 36
    .line 37
    invoke-direct {p1, v1, v2, v0}, Landroidx/work/impl/Migration_1_2;-><init>(III)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 41
    .line 42
    .line 43
    new-instance p1, Landroidx/work/impl/Migration_1_2;

    .line 44
    .line 45
    const/16 v0, 0xc

    .line 46
    .line 47
    const/16 v1, 0x12

    .line 48
    .line 49
    invoke-direct {p1, v2, v1, v0}, Landroidx/work/impl/Migration_1_2;-><init>(III)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 53
    .line 54
    .line 55
    new-instance p1, Landroidx/work/impl/Migration_1_2;

    .line 56
    .line 57
    const/16 v0, 0x13

    .line 58
    .line 59
    const/16 v2, 0xd

    .line 60
    .line 61
    invoke-direct {p1, v1, v0, v2}, Landroidx/work/impl/Migration_1_2;-><init>(III)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 65
    .line 66
    .line 67
    new-instance p1, Landroidx/room/migration/MigrationImpl;

    .line 68
    .line 69
    const/4 v0, 0x2

    .line 70
    invoke-direct {p1, v0}, Landroidx/room/migration/MigrationImpl;-><init>(I)V

    .line 71
    .line 72
    .line 73
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    .line 75
    .line 76
    new-instance p1, Landroidx/work/impl/Migration_1_2;

    .line 77
    .line 78
    const/16 v0, 0x15

    .line 79
    .line 80
    const/16 v1, 0xe

    .line 81
    .line 82
    const/16 v2, 0x14

    .line 83
    .line 84
    invoke-direct {p1, v2, v0, v1}, Landroidx/work/impl/Migration_1_2;-><init>(III)V

    .line 85
    .line 86
    .line 87
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 88
    .line 89
    .line 90
    new-instance p1, Landroidx/work/impl/Migration_1_2;

    .line 91
    .line 92
    const/16 v0, 0xf

    .line 93
    .line 94
    const/16 v1, 0x16

    .line 95
    .line 96
    const/16 v2, 0x17

    .line 97
    .line 98
    invoke-direct {p1, v1, v2, v0}, Landroidx/work/impl/Migration_1_2;-><init>(III)V

    .line 99
    .line 100
    .line 101
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 102
    .line 103
    .line 104
    new-instance p1, Landroidx/work/impl/Migration_1_2;

    .line 105
    .line 106
    const/16 v0, 0x18

    .line 107
    .line 108
    const/16 v1, 0x10

    .line 109
    .line 110
    invoke-direct {p1, v2, v0, v1}, Landroidx/work/impl/Migration_1_2;-><init>(III)V

    .line 111
    .line 112
    .line 113
    invoke-virtual {p0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 114
    .line 115
    .line 116
    return-object p0
.end method

.method public final createInvalidationTracker()Landroidx/room/InvalidationTracker;
    .locals 10

    .line 1
    new-instance v0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    new-instance v1, Ljava/util/LinkedHashMap;

    .line 7
    .line 8
    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    .line 9
    .line 10
    .line 11
    new-instance v2, Landroidx/room/InvalidationTracker;

    .line 12
    .line 13
    const-string v8, "WorkProgress"

    .line 14
    .line 15
    const-string v9, "Preference"

    .line 16
    .line 17
    const-string v3, "Dependency"

    .line 18
    .line 19
    const-string v4, "WorkSpec"

    .line 20
    .line 21
    const-string v5, "WorkTag"

    .line 22
    .line 23
    const-string v6, "SystemIdInfo"

    .line 24
    .line 25
    const-string v7, "WorkName"

    .line 26
    .line 27
    filled-new-array/range {v3 .. v9}, [Ljava/lang/String;

    .line 28
    .line 29
    .line 30
    move-result-object v3

    .line 31
    invoke-direct {v2, p0, v0, v1, v3}, Landroidx/room/InvalidationTracker;-><init>(Landroidx/room/RoomDatabase;Ljava/util/LinkedHashMap;Ljava/util/LinkedHashMap;[Ljava/lang/String;)V

    .line 32
    .line 33
    .line 34
    return-object v2
.end method

.method public final createOpenDelegate()Landroidx/room/RoomOpenDelegate;
    .locals 1

    .line 1
    new-instance v0, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;

    .line 2
    .line 3
    invoke-direct {v0, p0}, Landroidx/work/impl/WorkDatabase_Impl$createOpenDelegate$_openDelegate$1;-><init>(Landroidx/work/impl/WorkDatabase_Impl;)V

    .line 4
    .line 5
    .line 6
    return-object v0
.end method

.method public final dependencyDao()Landroidx/work/impl/model/DependencyDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_dependencyDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/work/impl/model/DependencyDao_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final getRequiredAutoMigrationSpecClasses()Ljava/util/Set;
    .locals 0

    .line 1
    new-instance p0, Ljava/util/LinkedHashSet;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/LinkedHashSet;-><init>()V

    .line 4
    .line 5
    .line 6
    return-object p0
.end method

.method public final getRequiredTypeConverterClasses()Ljava/util/LinkedHashMap;
    .locals 2

    .line 1
    new-instance p0, Ljava/util/LinkedHashMap;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 4
    .line 5
    .line 6
    const-class v0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 7
    .line 8
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 9
    .line 10
    .line 11
    move-result-object v0

    .line 12
    sget-object v1, Lkotlin/collections/EmptyList;->INSTANCE:Lkotlin/collections/EmptyList;

    .line 13
    .line 14
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    .line 16
    .line 17
    const-class v0, Landroidx/work/impl/model/DependencyDao_Impl;

    .line 18
    .line 19
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 20
    .line 21
    .line 22
    move-result-object v0

    .line 23
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    .line 25
    .line 26
    const-class v0, Landroidx/work/impl/model/WorkTagDao_Impl;

    .line 27
    .line 28
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 29
    .line 30
    .line 31
    move-result-object v0

    .line 32
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 33
    .line 34
    .line 35
    const-class v0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;

    .line 36
    .line 37
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 38
    .line 39
    .line 40
    move-result-object v0

    .line 41
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 42
    .line 43
    .line 44
    const-class v0, Landroidx/work/impl/model/WorkNameDao_Impl;

    .line 45
    .line 46
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 47
    .line 48
    .line 49
    move-result-object v0

    .line 50
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 51
    .line 52
    .line 53
    const-class v0, Landroidx/work/impl/model/WorkProgressDao_Impl;

    .line 54
    .line 55
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 56
    .line 57
    .line 58
    move-result-object v0

    .line 59
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 60
    .line 61
    .line 62
    const-class v0, Landroidx/work/impl/model/PreferenceDao_Impl;

    .line 63
    .line 64
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 65
    .line 66
    .line 67
    move-result-object v0

    .line 68
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 69
    .line 70
    .line 71
    const-class v0, Landroidx/transition/Transition$1;

    .line 72
    .line 73
    invoke-static {v0}, Lkotlin/jvm/internal/Reflection;->getOrCreateKotlinClass(Ljava/lang/Class;)Lkotlin/jvm/internal/ClassReference;

    .line 74
    .line 75
    .line 76
    move-result-object v0

    .line 77
    invoke-interface {p0, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    .line 79
    .line 80
    return-object p0
.end method

.method public final preferenceDao()Landroidx/work/impl/model/PreferenceDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_preferenceDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/work/impl/model/PreferenceDao_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final systemIdInfoDao()Landroidx/work/impl/model/SystemIdInfoDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_systemIdInfoDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/work/impl/model/SystemIdInfoDao_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final workNameDao()Landroidx/work/impl/model/WorkNameDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workNameDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/work/impl/model/WorkNameDao_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final workProgressDao()Landroidx/work/impl/model/WorkProgressDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workProgressDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/work/impl/model/WorkProgressDao_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workSpecDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/work/impl/model/WorkSpecDao_Impl;

    .line 8
    .line 9
    return-object p0
.end method

.method public final workTagDao()Landroidx/work/impl/model/WorkTagDao_Impl;
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/work/impl/WorkDatabase_Impl;->_workTagDao:Lkotlin/SynchronizedLazyImpl;

    .line 2
    .line 3
    invoke-virtual {p0}, Lkotlin/SynchronizedLazyImpl;->getValue()Ljava/lang/Object;

    .line 4
    .line 5
    .line 6
    move-result-object p0

    .line 7
    check-cast p0, Landroidx/work/impl/model/WorkTagDao_Impl;

    .line 8
    .line 9
    return-object p0
.end method
