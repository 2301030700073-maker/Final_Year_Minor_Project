.class public abstract Landroidx/work/impl/WorkDatabase;
.super Landroidx/room/RoomDatabase;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroidx/room/RoomDatabase;-><init>()V

    .line 2
    .line 3
    .line 4
    return-void
.end method


# virtual methods
.method public abstract dependencyDao()Landroidx/work/impl/model/DependencyDao_Impl;
.end method

.method public abstract preferenceDao()Landroidx/work/impl/model/PreferenceDao_Impl;
.end method

.method public abstract systemIdInfoDao()Landroidx/work/impl/model/SystemIdInfoDao_Impl;
.end method

.method public abstract workNameDao()Landroidx/work/impl/model/WorkNameDao_Impl;
.end method

.method public abstract workProgressDao()Landroidx/work/impl/model/WorkProgressDao_Impl;
.end method

.method public abstract workSpecDao()Landroidx/work/impl/model/WorkSpecDao_Impl;
.end method

.method public abstract workTagDao()Landroidx/work/impl/model/WorkTagDao_Impl;
.end method
