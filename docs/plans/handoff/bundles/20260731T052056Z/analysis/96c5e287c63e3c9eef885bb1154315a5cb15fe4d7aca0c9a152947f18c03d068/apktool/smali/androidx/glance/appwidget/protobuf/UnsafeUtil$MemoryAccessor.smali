.class public abstract Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# instance fields
.field public final unsafe:Lsun/misc/Unsafe;


# direct methods
.method public synthetic constructor <init>(Lsun/misc/Unsafe;)V
    .locals 0

    .line 1
    iput-object p1, p0, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public abstract getBoolean(JLjava/lang/Object;)Z
.end method

.method public abstract getByte(JLjava/lang/Object;)B
.end method

.method public abstract getDouble(JLjava/lang/Object;)D
.end method

.method public abstract getFloat(JLjava/lang/Object;)F
.end method

.method public abstract putBoolean(Ljava/lang/Object;JZ)V
.end method

.method public abstract putByte(Ljava/lang/Object;JB)V
.end method

.method public abstract putDouble(Ljava/lang/Object;JD)V
.end method

.method public abstract putFloat(Ljava/lang/Object;JF)V
.end method

.method public supportsUnsafeArrayOperations()Z
    .locals 9

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 3
    .line 4
    if-nez p0, :cond_0

    .line 5
    .line 6
    return v0

    .line 7
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 8
    .line 9
    .line 10
    move-result-object p0

    .line 11
    const-string v1, "objectFieldOffset"

    .line 12
    .line 13
    const/4 v2, 0x1

    .line 14
    new-array v3, v2, [Ljava/lang/Class;

    .line 15
    .line 16
    const-class v4, Ljava/lang/reflect/Field;

    .line 17
    .line 18
    aput-object v4, v3, v0

    .line 19
    .line 20
    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 21
    .line 22
    .line 23
    const-string v1, "arrayBaseOffset"

    .line 24
    .line 25
    const-class v3, Ljava/lang/Class;

    .line 26
    .line 27
    new-array v4, v2, [Ljava/lang/Class;

    .line 28
    .line 29
    aput-object v3, v4, v0

    .line 30
    .line 31
    invoke-virtual {p0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 32
    .line 33
    .line 34
    const-string v1, "arrayIndexScale"

    .line 35
    .line 36
    new-array v4, v2, [Ljava/lang/Class;

    .line 37
    .line 38
    aput-object v3, v4, v0

    .line 39
    .line 40
    invoke-virtual {p0, v1, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 41
    .line 42
    .line 43
    const-string v1, "getInt"

    .line 44
    .line 45
    const-class v3, Ljava/lang/Object;

    .line 46
    .line 47
    sget-object v4, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 48
    .line 49
    const/4 v5, 0x2

    .line 50
    new-array v6, v5, [Ljava/lang/Class;

    .line 51
    .line 52
    aput-object v3, v6, v0

    .line 53
    .line 54
    aput-object v4, v6, v2

    .line 55
    .line 56
    invoke-virtual {p0, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    .line 58
    .line 59
    const-string v1, "putInt"

    .line 60
    .line 61
    const/4 v6, 0x3

    .line 62
    new-array v7, v6, [Ljava/lang/Class;

    .line 63
    .line 64
    aput-object v3, v7, v0

    .line 65
    .line 66
    aput-object v4, v7, v2

    .line 67
    .line 68
    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 69
    .line 70
    aput-object v8, v7, v5

    .line 71
    .line 72
    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 73
    .line 74
    .line 75
    const-string v1, "getLong"

    .line 76
    .line 77
    new-array v7, v5, [Ljava/lang/Class;

    .line 78
    .line 79
    aput-object v3, v7, v0

    .line 80
    .line 81
    aput-object v4, v7, v2

    .line 82
    .line 83
    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 84
    .line 85
    .line 86
    const-string v1, "putLong"

    .line 87
    .line 88
    new-array v7, v6, [Ljava/lang/Class;

    .line 89
    .line 90
    aput-object v3, v7, v0

    .line 91
    .line 92
    aput-object v4, v7, v2

    .line 93
    .line 94
    aput-object v4, v7, v5

    .line 95
    .line 96
    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 97
    .line 98
    .line 99
    const-string v1, "getObject"

    .line 100
    .line 101
    new-array v7, v5, [Ljava/lang/Class;

    .line 102
    .line 103
    aput-object v3, v7, v0

    .line 104
    .line 105
    aput-object v4, v7, v2

    .line 106
    .line 107
    invoke-virtual {p0, v1, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 108
    .line 109
    .line 110
    const-string v1, "putObject"

    .line 111
    .line 112
    new-array v6, v6, [Ljava/lang/Class;

    .line 113
    .line 114
    aput-object v3, v6, v0

    .line 115
    .line 116
    aput-object v4, v6, v2

    .line 117
    .line 118
    aput-object v3, v6, v5

    .line 119
    .line 120
    invoke-virtual {p0, v1, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 121
    .line 122
    .line 123
    return v2

    .line 124
    :catchall_0
    move-exception p0

    .line 125
    invoke-static {p0}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->logMissingMethod(Ljava/lang/Throwable;)V

    .line 126
    .line 127
    .line 128
    return v0
.end method

.method public abstract supportsUnsafeByteBufferOperations()Z
.end method
