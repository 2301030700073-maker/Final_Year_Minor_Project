.class public final Landroidx/glance/appwidget/protobuf/UnsafeUtil$JvmMemoryAccessor;
.super Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# virtual methods
.method public final getBoolean(JLjava/lang/Object;)Z
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getBoolean(Ljava/lang/Object;J)Z

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final getDouble(JLjava/lang/Object;)D
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getDouble(Ljava/lang/Object;J)D

    .line 4
    .line 5
    .line 6
    move-result-wide p0

    .line 7
    return-wide p0
.end method

.method public final getFloat(JLjava/lang/Object;)F
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p3, p1, p2}, Lsun/misc/Unsafe;->getFloat(Ljava/lang/Object;J)F

    .line 4
    .line 5
    .line 6
    move-result p0

    .line 7
    return p0
.end method

.method public final putBoolean(Ljava/lang/Object;JZ)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putBoolean(Ljava/lang/Object;JZ)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final putByte(Ljava/lang/Object;JB)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putByte(Ljava/lang/Object;JB)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final putDouble(Ljava/lang/Object;JD)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual/range {p0 .. p5}, Lsun/misc/Unsafe;->putDouble(Ljava/lang/Object;JD)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final putFloat(Ljava/lang/Object;JF)V
    .locals 0

    .line 1
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 2
    .line 3
    invoke-virtual {p0, p1, p2, p3, p4}, Lsun/misc/Unsafe;->putFloat(Ljava/lang/Object;JF)V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final supportsUnsafeArrayOperations()Z
    .locals 9

    .line 1
    invoke-super {p0}, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->supportsUnsafeArrayOperations()Z

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x0

    .line 6
    if-nez v0, :cond_0

    .line 7
    .line 8
    return v1

    .line 9
    :cond_0
    :try_start_0
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 10
    .line 11
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 12
    .line 13
    .line 14
    move-result-object p0

    .line 15
    const-string v0, "getByte"

    .line 16
    .line 17
    const-class v2, Ljava/lang/Object;

    .line 18
    .line 19
    sget-object v3, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 20
    .line 21
    const/4 v4, 0x2

    .line 22
    new-array v5, v4, [Ljava/lang/Class;

    .line 23
    .line 24
    aput-object v2, v5, v1

    .line 25
    .line 26
    const/4 v6, 0x1

    .line 27
    aput-object v3, v5, v6

    .line 28
    .line 29
    invoke-virtual {p0, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 30
    .line 31
    .line 32
    const-string v0, "putByte"

    .line 33
    .line 34
    const/4 v5, 0x3

    .line 35
    new-array v7, v5, [Ljava/lang/Class;

    .line 36
    .line 37
    aput-object v2, v7, v1

    .line 38
    .line 39
    aput-object v3, v7, v6

    .line 40
    .line 41
    sget-object v8, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 42
    .line 43
    aput-object v8, v7, v4

    .line 44
    .line 45
    invoke-virtual {p0, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 46
    .line 47
    .line 48
    const-string v0, "getBoolean"

    .line 49
    .line 50
    new-array v7, v4, [Ljava/lang/Class;

    .line 51
    .line 52
    aput-object v2, v7, v1

    .line 53
    .line 54
    aput-object v3, v7, v6

    .line 55
    .line 56
    invoke-virtual {p0, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 57
    .line 58
    .line 59
    const-string v0, "putBoolean"

    .line 60
    .line 61
    new-array v7, v5, [Ljava/lang/Class;

    .line 62
    .line 63
    aput-object v2, v7, v1

    .line 64
    .line 65
    aput-object v3, v7, v6

    .line 66
    .line 67
    sget-object v8, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    .line 68
    .line 69
    aput-object v8, v7, v4

    .line 70
    .line 71
    invoke-virtual {p0, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 72
    .line 73
    .line 74
    const-string v0, "getFloat"

    .line 75
    .line 76
    new-array v7, v4, [Ljava/lang/Class;

    .line 77
    .line 78
    aput-object v2, v7, v1

    .line 79
    .line 80
    aput-object v3, v7, v6

    .line 81
    .line 82
    invoke-virtual {p0, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 83
    .line 84
    .line 85
    const-string v0, "putFloat"

    .line 86
    .line 87
    new-array v7, v5, [Ljava/lang/Class;

    .line 88
    .line 89
    aput-object v2, v7, v1

    .line 90
    .line 91
    aput-object v3, v7, v6

    .line 92
    .line 93
    sget-object v8, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    .line 94
    .line 95
    aput-object v8, v7, v4

    .line 96
    .line 97
    invoke-virtual {p0, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 98
    .line 99
    .line 100
    const-string v0, "getDouble"

    .line 101
    .line 102
    new-array v7, v4, [Ljava/lang/Class;

    .line 103
    .line 104
    aput-object v2, v7, v1

    .line 105
    .line 106
    aput-object v3, v7, v6

    .line 107
    .line 108
    invoke-virtual {p0, v0, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 109
    .line 110
    .line 111
    const-string v0, "putDouble"

    .line 112
    .line 113
    new-array v5, v5, [Ljava/lang/Class;

    .line 114
    .line 115
    aput-object v2, v5, v1

    .line 116
    .line 117
    aput-object v3, v5, v6

    .line 118
    .line 119
    sget-object v2, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    .line 120
    .line 121
    aput-object v2, v5, v4

    .line 122
    .line 123
    invoke-virtual {p0, v0, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 124
    .line 125
    .line 126
    return v6

    .line 127
    :catchall_0
    move-exception p0

    .line 128
    invoke-static {p0}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->logMissingMethod(Ljava/lang/Throwable;)V

    .line 129
    .line 130
    .line 131
    return v1
.end method

.method public final supportsUnsafeByteBufferOperations()Z
    .locals 10

    .line 1
    const-string v0, "copyMemory"

    .line 2
    .line 3
    const-string v1, "getLong"

    .line 4
    .line 5
    const/4 v2, 0x0

    .line 6
    iget-object p0, p0, Landroidx/glance/appwidget/protobuf/UnsafeUtil$MemoryAccessor;->unsafe:Lsun/misc/Unsafe;

    .line 7
    .line 8
    if-nez p0, :cond_0

    .line 9
    .line 10
    goto/16 :goto_0

    .line 11
    .line 12
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 13
    .line 14
    .line 15
    move-result-object v3

    .line 16
    const-string v4, "objectFieldOffset"

    .line 17
    .line 18
    const/4 v5, 0x1

    .line 19
    new-array v6, v5, [Ljava/lang/Class;

    .line 20
    .line 21
    const-class v7, Ljava/lang/reflect/Field;

    .line 22
    .line 23
    aput-object v7, v6, v2

    .line 24
    .line 25
    invoke-virtual {v3, v4, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 26
    .line 27
    .line 28
    const-class v4, Ljava/lang/Object;

    .line 29
    .line 30
    sget-object v6, Ljava/lang/Long;->TYPE:Ljava/lang/Class;

    .line 31
    .line 32
    const/4 v7, 0x2

    .line 33
    new-array v8, v7, [Ljava/lang/Class;

    .line 34
    .line 35
    aput-object v4, v8, v2

    .line 36
    .line 37
    aput-object v6, v8, v5

    .line 38
    .line 39
    invoke-virtual {v3, v1, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 40
    .line 41
    .line 42
    invoke-static {}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->bufferAddressField()Ljava/lang/reflect/Field;

    .line 43
    .line 44
    .line 45
    move-result-object v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 46
    if-nez v3, :cond_1

    .line 47
    .line 48
    goto :goto_0

    .line 49
    :cond_1
    :try_start_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 50
    .line 51
    .line 52
    move-result-object p0

    .line 53
    const-string v3, "getByte"

    .line 54
    .line 55
    new-array v8, v5, [Ljava/lang/Class;

    .line 56
    .line 57
    aput-object v6, v8, v2

    .line 58
    .line 59
    invoke-virtual {p0, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 60
    .line 61
    .line 62
    const-string v3, "putByte"

    .line 63
    .line 64
    new-array v8, v7, [Ljava/lang/Class;

    .line 65
    .line 66
    aput-object v6, v8, v2

    .line 67
    .line 68
    sget-object v9, Ljava/lang/Byte;->TYPE:Ljava/lang/Class;

    .line 69
    .line 70
    aput-object v9, v8, v5

    .line 71
    .line 72
    invoke-virtual {p0, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 73
    .line 74
    .line 75
    const-string v3, "getInt"

    .line 76
    .line 77
    new-array v8, v5, [Ljava/lang/Class;

    .line 78
    .line 79
    aput-object v6, v8, v2

    .line 80
    .line 81
    invoke-virtual {p0, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 82
    .line 83
    .line 84
    const-string v3, "putInt"

    .line 85
    .line 86
    new-array v8, v7, [Ljava/lang/Class;

    .line 87
    .line 88
    aput-object v6, v8, v2

    .line 89
    .line 90
    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    .line 91
    .line 92
    aput-object v9, v8, v5

    .line 93
    .line 94
    invoke-virtual {p0, v3, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 95
    .line 96
    .line 97
    new-array v3, v5, [Ljava/lang/Class;

    .line 98
    .line 99
    aput-object v6, v3, v2

    .line 100
    .line 101
    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 102
    .line 103
    .line 104
    const-string v1, "putLong"

    .line 105
    .line 106
    new-array v3, v7, [Ljava/lang/Class;

    .line 107
    .line 108
    aput-object v6, v3, v2

    .line 109
    .line 110
    aput-object v6, v3, v5

    .line 111
    .line 112
    invoke-virtual {p0, v1, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 113
    .line 114
    .line 115
    const/4 v1, 0x3

    .line 116
    new-array v3, v1, [Ljava/lang/Class;

    .line 117
    .line 118
    aput-object v6, v3, v2

    .line 119
    .line 120
    aput-object v6, v3, v5

    .line 121
    .line 122
    aput-object v6, v3, v7

    .line 123
    .line 124
    invoke-virtual {p0, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    .line 125
    .line 126
    .line 127
    const/4 v3, 0x5

    .line 128
    new-array v3, v3, [Ljava/lang/Class;

    .line 129
    .line 130
    aput-object v4, v3, v2

    .line 131
    .line 132
    aput-object v6, v3, v5

    .line 133
    .line 134
    aput-object v4, v3, v7

    .line 135
    .line 136
    aput-object v6, v3, v1

    .line 137
    .line 138
    const/4 v1, 0x4

    .line 139
    aput-object v6, v3, v1

    .line 140
    .line 141
    invoke-virtual {p0, v0, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 142
    .line 143
    .line 144
    return v5

    .line 145
    :catchall_0
    move-exception p0

    .line 146
    invoke-static {p0}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->logMissingMethod(Ljava/lang/Throwable;)V

    .line 147
    .line 148
    .line 149
    return v2

    .line 150
    :catchall_1
    move-exception p0

    .line 151
    invoke-static {p0}, Landroidx/glance/appwidget/protobuf/UnsafeUtil;->logMissingMethod(Ljava/lang/Throwable;)V

    .line 152
    .line 153
    .line 154
    :goto_0
    return v2
.end method
