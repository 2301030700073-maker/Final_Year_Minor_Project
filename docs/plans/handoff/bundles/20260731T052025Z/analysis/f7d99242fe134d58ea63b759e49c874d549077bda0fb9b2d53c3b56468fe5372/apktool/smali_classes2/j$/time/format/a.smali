.class public final Lj$/time/format/a;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final b:Lj$/time/format/s;


# instance fields
.field public final synthetic a:Lj$/nio/file/x;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lj$/util/concurrent/ConcurrentHashMap;

    .line 2
    .line 3
    const/16 v1, 0x10

    .line 4
    .line 5
    const/4 v2, 0x2

    .line 6
    invoke-direct {v0, v1, v2}, Lj$/util/concurrent/ConcurrentHashMap;-><init>(II)V

    .line 7
    .line 8
    .line 9
    new-instance v0, Lj$/time/format/s;

    .line 10
    .line 11
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lj$/time/format/a;->b:Lj$/time/format/s;

    .line 15
    .line 16
    return-void
.end method

.method public constructor <init>(Lj$/nio/file/x;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lj$/time/format/a;->a:Lj$/nio/file/x;

    .line 5
    .line 6
    return-void
.end method
