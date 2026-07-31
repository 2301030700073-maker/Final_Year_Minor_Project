.class public abstract Lj$/nio/file/y;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final a:Lj$/nio/file/x;

.field public static final b:Lj$/nio/file/x;

.field public static final c:Lj$/nio/file/x;

.field public static final d:Lj$/nio/file/x;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lj$/nio/file/x;

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
    invoke-direct {v0, v2, v3, v1}, Lj$/nio/file/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 9
    .line 10
    .line 11
    sput-object v0, Lj$/nio/file/y;->a:Lj$/nio/file/x;

    .line 12
    .line 13
    new-instance v0, Lj$/nio/file/x;

    .line 14
    .line 15
    const-class v1, Lj$/nio/file/Path;

    .line 16
    .line 17
    const-string v3, "ENTRY_CREATE"

    .line 18
    .line 19
    invoke-direct {v0, v2, v3, v1}, Lj$/nio/file/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 20
    .line 21
    .line 22
    sput-object v0, Lj$/nio/file/y;->b:Lj$/nio/file/x;

    .line 23
    .line 24
    new-instance v0, Lj$/nio/file/x;

    .line 25
    .line 26
    const-class v1, Lj$/nio/file/Path;

    .line 27
    .line 28
    const-string v3, "ENTRY_DELETE"

    .line 29
    .line 30
    invoke-direct {v0, v2, v3, v1}, Lj$/nio/file/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 31
    .line 32
    .line 33
    sput-object v0, Lj$/nio/file/y;->c:Lj$/nio/file/x;

    .line 34
    .line 35
    new-instance v0, Lj$/nio/file/x;

    .line 36
    .line 37
    const-class v1, Lj$/nio/file/Path;

    .line 38
    .line 39
    const-string v3, "ENTRY_MODIFY"

    .line 40
    .line 41
    invoke-direct {v0, v2, v3, v1}, Lj$/nio/file/x;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lj$/nio/file/y;->d:Lj$/nio/file/x;

    .line 45
    .line 46
    return-void
.end method
