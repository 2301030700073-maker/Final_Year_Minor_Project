.class public abstract synthetic Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final calculationBlockNestedLevel:Lorg/acra/util/ProcessFinisher;

.field public static final derivedStateObservers:Lorg/acra/util/ProcessFinisher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lorg/acra/util/ProcessFinisher;

    .line 2
    .line 3
    const/16 v1, 0x8

    .line 4
    .line 5
    invoke-direct {v0, v1}, Lorg/acra/util/ProcessFinisher;-><init>(I)V

    .line 6
    .line 7
    .line 8
    sput-object v0, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->calculationBlockNestedLevel:Lorg/acra/util/ProcessFinisher;

    .line 9
    .line 10
    new-instance v0, Lorg/acra/util/ProcessFinisher;

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lorg/acra/util/ProcessFinisher;-><init>(I)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Landroidx/compose/runtime/SnapshotStateKt__DerivedStateKt;->derivedStateObservers:Lorg/acra/util/ProcessFinisher;

    .line 16
    .line 17
    return-void
.end method
