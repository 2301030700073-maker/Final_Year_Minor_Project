.class public abstract Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$SingleHolder;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final HELPER:Lio/reactivex/rxjava3/internal/schedulers/SingleScheduler;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Lio/reactivex/rxjava3/schedulers/Schedulers;->SINGLE:Lio/reactivex/rxjava3/internal/schedulers/SingleScheduler;

    .line 2
    .line 3
    sput-object v0, Lio/reactivex/rxjava3/internal/schedulers/ExecutorScheduler$SingleHolder;->HELPER:Lio/reactivex/rxjava3/internal/schedulers/SingleScheduler;

    .line 4
    .line 5
    return-void
.end method
