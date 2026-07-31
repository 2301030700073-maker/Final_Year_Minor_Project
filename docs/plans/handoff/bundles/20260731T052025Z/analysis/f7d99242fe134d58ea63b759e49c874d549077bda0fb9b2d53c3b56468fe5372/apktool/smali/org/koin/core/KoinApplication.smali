.class public final Lorg/koin/core/KoinApplication;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field public allowOverride:Z

.field public final koin:Lorg/koin/core/Koin;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance v0, Lorg/koin/core/Koin;

    .line 5
    .line 6
    invoke-direct {v0}, Lorg/koin/core/Koin;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object v0, p0, Lorg/koin/core/KoinApplication;->koin:Lorg/koin/core/Koin;

    .line 10
    .line 11
    const/4 v0, 0x1

    .line 12
    iput-boolean v0, p0, Lorg/koin/core/KoinApplication;->allowOverride:Z

    .line 13
    .line 14
    return-void
.end method
