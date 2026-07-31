.class public abstract Lkotlin/coroutines/jvm/internal/ModuleNameRetriever;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static cache:Lorg/acra/util/ProcessFinisher;

.field public static final notOnJava9:Lorg/acra/util/ProcessFinisher;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lorg/acra/util/ProcessFinisher;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/16 v2, 0x1a

    .line 5
    .line 6
    invoke-direct {v0, v2, v1, v1, v1}, Lorg/acra/util/ProcessFinisher;-><init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 7
    .line 8
    .line 9
    sput-object v0, Lkotlin/coroutines/jvm/internal/ModuleNameRetriever;->notOnJava9:Lorg/acra/util/ProcessFinisher;

    .line 10
    .line 11
    return-void
.end method
