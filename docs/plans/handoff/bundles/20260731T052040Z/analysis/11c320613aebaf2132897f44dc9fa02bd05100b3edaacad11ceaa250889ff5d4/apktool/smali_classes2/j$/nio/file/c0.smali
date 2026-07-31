.class public abstract Lj$/nio/file/c0;
.super Ljava/lang/Object;
.source "r8-map-id-86a71dde26502018768275c3ef5c4d56379672d582e9c15e1a63fb997724bbe7"


# static fields
.field public static final a:Lj$/nio/file/b0;

.field public static final b:Lj$/nio/file/b0;

.field public static final c:Lj$/nio/file/b0;

.field public static final d:Lj$/nio/file/b0;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lj$/nio/file/b0;

    .line 2
    .line 3
    const-class v1, Ljava/lang/Object;

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    const-string v3, "OVERFLOW"

    .line 7
    .line 8
    invoke-direct {v0, v2, v3, v1}, Lj$/nio/file/b0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lj$/nio/file/c0;->a:Lj$/nio/file/b0;

    .line 12
    .line 13
    new-instance v0, Lj$/nio/file/b0;

    .line 14
    .line 15
    const-class v1, Lj$/nio/file/Path;

    .line 16
    .line 17
    const-string v3, "ENTRY_CREATE"

    .line 18
    .line 19
    invoke-direct {v0, v2, v3, v1}, Lj$/nio/file/b0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lj$/nio/file/c0;->b:Lj$/nio/file/b0;

    .line 23
    .line 24
    new-instance v0, Lj$/nio/file/b0;

    .line 25
    .line 26
    const-class v1, Lj$/nio/file/Path;

    .line 27
    .line 28
    const-string v3, "ENTRY_DELETE"

    .line 29
    .line 30
    invoke-direct {v0, v2, v3, v1}, Lj$/nio/file/b0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lj$/nio/file/c0;->c:Lj$/nio/file/b0;

    .line 34
    .line 35
    new-instance v0, Lj$/nio/file/b0;

    .line 36
    .line 37
    const-class v1, Lj$/nio/file/Path;

    .line 38
    .line 39
    const-string v3, "ENTRY_MODIFY"

    .line 40
    .line 41
    invoke-direct {v0, v2, v3, v1}, Lj$/nio/file/b0;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lj$/nio/file/c0;->d:Lj$/nio/file/b0;

    .line 45
    .line 46
    return-void
.end method
