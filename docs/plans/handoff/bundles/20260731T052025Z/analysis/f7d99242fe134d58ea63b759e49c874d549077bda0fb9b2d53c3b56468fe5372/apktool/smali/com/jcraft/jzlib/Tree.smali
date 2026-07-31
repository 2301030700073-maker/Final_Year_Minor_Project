.class public final Lcom/jcraft/jzlib/Tree;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# static fields
.field public static final _dist_code:[B

.field public static final _length_code:[B

.field public static final base_dist:[I

.field public static final base_length:[I

.field public static final bl_order:[B

.field public static final extra_blbits:[I

.field public static final extra_dbits:[I

.field public static final extra_lbits:[I


# instance fields
.field public dyn_tree:[S

.field public max_code:I

.field public stat_desc:Lcom/jcraft/jzlib/StaticTree;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    const/16 v0, 0x1d

    .line 2
    .line 3
    new-array v1, v0, [I

    .line 4
    .line 5
    fill-array-data v1, :array_0

    .line 6
    .line 7
    .line 8
    sput-object v1, Lcom/jcraft/jzlib/Tree;->extra_lbits:[I

    .line 9
    .line 10
    const/16 v1, 0x1e

    .line 11
    .line 12
    new-array v1, v1, [I

    .line 13
    .line 14
    fill-array-data v1, :array_1

    .line 15
    .line 16
    .line 17
    sput-object v1, Lcom/jcraft/jzlib/Tree;->extra_dbits:[I

    .line 18
    .line 19
    const/16 v1, 0x13

    .line 20
    .line 21
    new-array v1, v1, [I

    .line 22
    .line 23
    fill-array-data v1, :array_2

    .line 24
    .line 25
    .line 26
    sput-object v1, Lcom/jcraft/jzlib/Tree;->extra_blbits:[I

    .line 27
    .line 28
    const/16 v1, 0x13

    .line 29
    .line 30
    new-array v1, v1, [B

    .line 31
    .line 32
    fill-array-data v1, :array_3

    .line 33
    .line 34
    .line 35
    sput-object v1, Lcom/jcraft/jzlib/Tree;->bl_order:[B

    .line 36
    .line 37
    const/16 v1, 0x200

    .line 38
    .line 39
    new-array v1, v1, [B

    .line 40
    .line 41
    fill-array-data v1, :array_4

    .line 42
    .line 43
    .line 44
    sput-object v1, Lcom/jcraft/jzlib/Tree;->_dist_code:[B

    .line 45
    .line 46
    const/16 v1, 0x100

    .line 47
    .line 48
    new-array v1, v1, [B

    .line 49
    .line 50
    fill-array-data v1, :array_5

    .line 51
    .line 52
    .line 53
    sput-object v1, Lcom/jcraft/jzlib/Tree;->_length_code:[B

    .line 54
    .line 55
    new-array v0, v0, [I

    .line 56
    .line 57
    fill-array-data v0, :array_6

    .line 58
    .line 59
    .line 60
    sput-object v0, Lcom/jcraft/jzlib/Tree;->base_length:[I

    .line 61
    .line 62
    const/16 v0, 0x1e

    .line 63
    .line 64
    new-array v0, v0, [I

    .line 65
    .line 66
    fill-array-data v0, :array_7

    .line 67
    .line 68
    .line 69
    sput-object v0, Lcom/jcraft/jzlib/Tree;->base_dist:[I

    .line 70
    .line 71
    return-void

    .line 72
    nop

    .line 73
    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x1
        0x1
        0x2
        0x2
        0x2
        0x2
        0x3
        0x3
        0x3
        0x3
        0x4
        0x4
        0x4
        0x4
        0x5
        0x5
        0x5
        0x5
        0x0
    .end array-data

    .line 74
    .line 75
    .line 76
    .line 77
    .line 78
    .line 79
    .line 80
    .line 81
    .line 82
    .line 83
    .line 84
    .line 85
    .line 86
    .line 87
    .line 88
    .line 89
    .line 90
    .line 91
    .line 92
    .line 93
    .line 94
    .line 95
    .line 96
    .line 97
    .line 98
    .line 99
    .line 100
    .line 101
    .line 102
    .line 103
    .line 104
    .line 105
    .line 106
    .line 107
    .line 108
    .line 109
    .line 110
    .line 111
    .line 112
    .line 113
    .line 114
    .line 115
    .line 116
    .line 117
    .line 118
    .line 119
    .line 120
    .line 121
    .line 122
    .line 123
    .line 124
    .line 125
    .line 126
    .line 127
    .line 128
    .line 129
    .line 130
    .line 131
    .line 132
    .line 133
    .line 134
    .line 135
    :array_1
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x1
        0x1
        0x2
        0x2
        0x3
        0x3
        0x4
        0x4
        0x5
        0x5
        0x6
        0x6
        0x7
        0x7
        0x8
        0x8
        0x9
        0x9
        0xa
        0xa
        0xb
        0xb
        0xc
        0xc
        0xd
        0xd
    .end array-data

    .line 136
    .line 137
    .line 138
    .line 139
    .line 140
    .line 141
    .line 142
    .line 143
    .line 144
    .line 145
    .line 146
    .line 147
    .line 148
    .line 149
    .line 150
    .line 151
    .line 152
    .line 153
    .line 154
    .line 155
    .line 156
    .line 157
    .line 158
    .line 159
    .line 160
    .line 161
    .line 162
    .line 163
    .line 164
    .line 165
    .line 166
    .line 167
    .line 168
    .line 169
    .line 170
    .line 171
    .line 172
    .line 173
    .line 174
    .line 175
    .line 176
    .line 177
    .line 178
    .line 179
    .line 180
    .line 181
    :array_2
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x2
        0x3
        0x7
    .end array-data

    :array_3
    .array-data 1
        0x10t
        0x11t
        0x12t
        0x0t
        0x8t
        0x7t
        0x9t
        0x6t
        0xat
        0x5t
        0xbt
        0x4t
        0xct
        0x3t
        0xdt
        0x2t
        0xet
        0x1t
        0xft
    .end array-data

    :array_4
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x4t
        0x5t
        0x5t
        0x6t
        0x6t
        0x6t
        0x6t
        0x7t
        0x7t
        0x7t
        0x7t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x8t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0x9t
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xat
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xct
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0xft
        0x0t
        0x0t
        0x10t
        0x11t
        0x12t
        0x12t
        0x13t
        0x13t
        0x14t
        0x14t
        0x14t
        0x14t
        0x15t
        0x15t
        0x15t
        0x15t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1ct
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
        0x1dt
    .end array-data

    :array_5
    .array-data 1
        0x0t
        0x1t
        0x2t
        0x3t
        0x4t
        0x5t
        0x6t
        0x7t
        0x8t
        0x8t
        0x9t
        0x9t
        0xat
        0xat
        0xbt
        0xbt
        0xct
        0xct
        0xct
        0xct
        0xdt
        0xdt
        0xdt
        0xdt
        0xet
        0xet
        0xet
        0xet
        0xft
        0xft
        0xft
        0xft
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x10t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x11t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x12t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x13t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x14t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x15t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x16t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x17t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x18t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x19t
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1at
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1bt
        0x1ct
    .end array-data

    :array_6
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x5
        0x6
        0x7
        0x8
        0xa
        0xc
        0xe
        0x10
        0x14
        0x18
        0x1c
        0x20
        0x28
        0x30
        0x38
        0x40
        0x50
        0x60
        0x70
        0x80
        0xa0
        0xc0
        0xe0
        0x0
    .end array-data

    :array_7
    .array-data 4
        0x0
        0x1
        0x2
        0x3
        0x4
        0x6
        0x8
        0xc
        0x10
        0x18
        0x20
        0x30
        0x40
        0x60
        0x80
        0xc0
        0x100
        0x180
        0x200
        0x300
        0x400
        0x600
        0x800
        0xc00
        0x1000
        0x1800
        0x2000
        0x3000
        0x4000
        0x6000
    .end array-data
.end method


# virtual methods
.method public final build_tree(Lcom/jcraft/jzlib/Deflate;)V
    .locals 24

    .line 1
    move-object/from16 v0, p0

    .line 2
    .line 3
    move-object/from16 v1, p1

    .line 4
    .line 5
    iget-object v2, v0, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 6
    .line 7
    iget-object v3, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    .line 8
    .line 9
    iget-object v4, v3, Lcom/jcraft/jzlib/StaticTree;->static_tree:[S

    .line 10
    .line 11
    iget v3, v3, Lcom/jcraft/jzlib/StaticTree;->elems:I

    .line 12
    .line 13
    const/4 v5, 0x0

    .line 14
    iput v5, v1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    .line 15
    .line 16
    iget-object v6, v1, Lcom/jcraft/jzlib/Deflate;->bl_count:[S

    .line 17
    .line 18
    iget-object v7, v1, Lcom/jcraft/jzlib/Deflate;->depth:[B

    .line 19
    .line 20
    iget-object v8, v1, Lcom/jcraft/jzlib/Deflate;->heap:[I

    .line 21
    .line 22
    const/16 v9, 0x23d

    .line 23
    .line 24
    iput v9, v1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    .line 25
    .line 26
    move v11, v5

    .line 27
    const/4 v12, -0x1

    .line 28
    :goto_0
    const/4 v13, 0x1

    .line 29
    if-ge v11, v3, :cond_1

    .line 30
    .line 31
    mul-int/lit8 v14, v11, 0x2

    .line 32
    .line 33
    aget-short v15, v2, v14

    .line 34
    .line 35
    if-eqz v15, :cond_0

    .line 36
    .line 37
    iget v12, v1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    .line 38
    .line 39
    add-int/2addr v12, v13

    .line 40
    iput v12, v1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    .line 41
    .line 42
    aput v11, v8, v12

    .line 43
    .line 44
    aput-byte v5, v7, v11

    .line 45
    .line 46
    move v12, v11

    .line 47
    goto :goto_1

    .line 48
    :cond_0
    add-int/lit8 v14, v14, 0x1

    .line 49
    .line 50
    aput-short v5, v2, v14

    .line 51
    .line 52
    :goto_1
    add-int/lit8 v11, v11, 0x1

    .line 53
    .line 54
    goto :goto_0

    .line 55
    :cond_1
    :goto_2
    iget v11, v1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    .line 56
    .line 57
    const/4 v14, 0x2

    .line 58
    if-ge v11, v14, :cond_4

    .line 59
    .line 60
    add-int/lit8 v11, v11, 0x1

    .line 61
    .line 62
    iput v11, v1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    .line 63
    .line 64
    if-ge v12, v14, :cond_2

    .line 65
    .line 66
    add-int/lit8 v12, v12, 0x1

    .line 67
    .line 68
    move v14, v12

    .line 69
    goto :goto_3

    .line 70
    :cond_2
    move v14, v12

    .line 71
    move v12, v5

    .line 72
    :goto_3
    aput v12, v8, v11

    .line 73
    .line 74
    mul-int/lit8 v11, v12, 0x2

    .line 75
    .line 76
    aput-short v13, v2, v11

    .line 77
    .line 78
    aput-byte v5, v7, v12

    .line 79
    .line 80
    iget v12, v1, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 81
    .line 82
    sub-int/2addr v12, v13

    .line 83
    iput v12, v1, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 84
    .line 85
    if-eqz v4, :cond_3

    .line 86
    .line 87
    iget v12, v1, Lcom/jcraft/jzlib/Deflate;->static_len:I

    .line 88
    .line 89
    add-int/lit8 v11, v11, 0x1

    .line 90
    .line 91
    aget-short v11, v4, v11

    .line 92
    .line 93
    sub-int/2addr v12, v11

    .line 94
    iput v12, v1, Lcom/jcraft/jzlib/Deflate;->static_len:I

    .line 95
    .line 96
    :cond_3
    move v12, v14

    .line 97
    goto :goto_2

    .line 98
    :cond_4
    iput v12, v0, Lcom/jcraft/jzlib/Tree;->max_code:I

    .line 99
    .line 100
    div-int/2addr v11, v14

    .line 101
    :goto_4
    if-lt v11, v13, :cond_5

    .line 102
    .line 103
    invoke-virtual {v1, v11, v2}, Lcom/jcraft/jzlib/Deflate;->pqdownheap(I[S)V

    .line 104
    .line 105
    .line 106
    add-int/lit8 v11, v11, -0x1

    .line 107
    .line 108
    goto :goto_4

    .line 109
    :cond_5
    :goto_5
    aget v4, v8, v13

    .line 110
    .line 111
    iget v11, v1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    .line 112
    .line 113
    add-int/lit8 v15, v11, -0x1

    .line 114
    .line 115
    iput v15, v1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    .line 116
    .line 117
    aget v11, v8, v11

    .line 118
    .line 119
    aput v11, v8, v13

    .line 120
    .line 121
    invoke-virtual {v1, v13, v2}, Lcom/jcraft/jzlib/Deflate;->pqdownheap(I[S)V

    .line 122
    .line 123
    .line 124
    aget v11, v8, v13

    .line 125
    .line 126
    iget v15, v1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    .line 127
    .line 128
    move/from16 v16, v5

    .line 129
    .line 130
    add-int/lit8 v5, v15, -0x1

    .line 131
    .line 132
    iput v5, v1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    .line 133
    .line 134
    aput v4, v8, v5

    .line 135
    .line 136
    sub-int/2addr v15, v14

    .line 137
    iput v15, v1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    .line 138
    .line 139
    aput v11, v8, v15

    .line 140
    .line 141
    mul-int/lit8 v5, v3, 0x2

    .line 142
    .line 143
    mul-int/lit8 v15, v4, 0x2

    .line 144
    .line 145
    aget-short v17, v2, v15

    .line 146
    .line 147
    mul-int/lit8 v18, v11, 0x2

    .line 148
    .line 149
    aget-short v19, v2, v18

    .line 150
    .line 151
    const/16 v20, -0x1

    .line 152
    .line 153
    add-int v10, v17, v19

    .line 154
    .line 155
    int-to-short v10, v10

    .line 156
    aput-short v10, v2, v5

    .line 157
    .line 158
    aget-byte v4, v7, v4

    .line 159
    .line 160
    aget-byte v5, v7, v11

    .line 161
    .line 162
    invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I

    .line 163
    .line 164
    .line 165
    move-result v4

    .line 166
    add-int/2addr v4, v13

    .line 167
    int-to-byte v4, v4

    .line 168
    aput-byte v4, v7, v3

    .line 169
    .line 170
    add-int/2addr v15, v13

    .line 171
    add-int/lit8 v18, v18, 0x1

    .line 172
    .line 173
    int-to-short v4, v3

    .line 174
    aput-short v4, v2, v18

    .line 175
    .line 176
    aput-short v4, v2, v15

    .line 177
    .line 178
    add-int/lit8 v4, v3, 0x1

    .line 179
    .line 180
    aput v3, v8, v13

    .line 181
    .line 182
    invoke-virtual {v1, v13, v2}, Lcom/jcraft/jzlib/Deflate;->pqdownheap(I[S)V

    .line 183
    .line 184
    .line 185
    iget v3, v1, Lcom/jcraft/jzlib/Deflate;->heap_len:I

    .line 186
    .line 187
    if-ge v3, v14, :cond_16

    .line 188
    .line 189
    iget v3, v1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    .line 190
    .line 191
    sub-int/2addr v3, v13

    .line 192
    iput v3, v1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    .line 193
    .line 194
    aget v4, v8, v13

    .line 195
    .line 196
    aput v4, v8, v3

    .line 197
    .line 198
    iget-object v3, v0, Lcom/jcraft/jzlib/Tree;->dyn_tree:[S

    .line 199
    .line 200
    iget-object v4, v0, Lcom/jcraft/jzlib/Tree;->stat_desc:Lcom/jcraft/jzlib/StaticTree;

    .line 201
    .line 202
    iget-object v5, v4, Lcom/jcraft/jzlib/StaticTree;->static_tree:[S

    .line 203
    .line 204
    iget-object v7, v4, Lcom/jcraft/jzlib/StaticTree;->extra_bits:[I

    .line 205
    .line 206
    iget v10, v4, Lcom/jcraft/jzlib/StaticTree;->extra_base:I

    .line 207
    .line 208
    iget v11, v4, Lcom/jcraft/jzlib/StaticTree;->max_length:I

    .line 209
    .line 210
    move/from16 v4, v16

    .line 211
    .line 212
    :goto_6
    const/16 v15, 0xf

    .line 213
    .line 214
    if-gt v4, v15, :cond_6

    .line 215
    .line 216
    aput-short v16, v6, v4

    .line 217
    .line 218
    add-int/lit8 v4, v4, 0x1

    .line 219
    .line 220
    goto :goto_6

    .line 221
    :cond_6
    iget v4, v1, Lcom/jcraft/jzlib/Deflate;->heap_max:I

    .line 222
    .line 223
    aget v17, v8, v4

    .line 224
    .line 225
    mul-int/lit8 v17, v17, 0x2

    .line 226
    .line 227
    add-int/lit8 v17, v17, 0x1

    .line 228
    .line 229
    aput-short v16, v3, v17

    .line 230
    .line 231
    add-int/2addr v4, v13

    .line 232
    move/from16 v17, v16

    .line 233
    .line 234
    :goto_7
    if-ge v4, v9, :cond_b

    .line 235
    .line 236
    aget v9, v8, v4

    .line 237
    .line 238
    mul-int/lit8 v19, v9, 0x2

    .line 239
    .line 240
    add-int/lit8 v21, v19, 0x1

    .line 241
    .line 242
    aget-short v22, v3, v21

    .line 243
    .line 244
    mul-int/lit8 v22, v22, 0x2

    .line 245
    .line 246
    add-int/lit8 v22, v22, 0x1

    .line 247
    .line 248
    aget-short v22, v3, v22

    .line 249
    .line 250
    move/from16 v23, v13

    .line 251
    .line 252
    add-int/lit8 v13, v22, 0x1

    .line 253
    .line 254
    if-le v13, v11, :cond_7

    .line 255
    .line 256
    add-int/lit8 v17, v17, 0x1

    .line 257
    .line 258
    move v13, v11

    .line 259
    :cond_7
    move/from16 v22, v14

    .line 260
    .line 261
    int-to-short v14, v13

    .line 262
    aput-short v14, v3, v21

    .line 263
    .line 264
    iget v14, v0, Lcom/jcraft/jzlib/Tree;->max_code:I

    .line 265
    .line 266
    if-le v9, v14, :cond_8

    .line 267
    .line 268
    goto :goto_9

    .line 269
    :cond_8
    aget-short v14, v6, v13

    .line 270
    .line 271
    add-int/lit8 v14, v14, 0x1

    .line 272
    .line 273
    int-to-short v14, v14

    .line 274
    aput-short v14, v6, v13

    .line 275
    .line 276
    if-lt v9, v10, :cond_9

    .line 277
    .line 278
    sub-int/2addr v9, v10

    .line 279
    aget v9, v7, v9

    .line 280
    .line 281
    goto :goto_8

    .line 282
    :cond_9
    move/from16 v9, v16

    .line 283
    .line 284
    :goto_8
    aget-short v14, v3, v19

    .line 285
    .line 286
    iget v15, v1, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 287
    .line 288
    add-int/2addr v13, v9

    .line 289
    mul-int/2addr v13, v14

    .line 290
    add-int/2addr v13, v15

    .line 291
    iput v13, v1, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 292
    .line 293
    if-eqz v5, :cond_a

    .line 294
    .line 295
    iget v13, v1, Lcom/jcraft/jzlib/Deflate;->static_len:I

    .line 296
    .line 297
    aget-short v15, v5, v21

    .line 298
    .line 299
    add-int/2addr v15, v9

    .line 300
    mul-int/2addr v15, v14

    .line 301
    add-int/2addr v15, v13

    .line 302
    iput v15, v1, Lcom/jcraft/jzlib/Deflate;->static_len:I

    .line 303
    .line 304
    :cond_a
    :goto_9
    add-int/lit8 v4, v4, 0x1

    .line 305
    .line 306
    move/from16 v14, v22

    .line 307
    .line 308
    move/from16 v13, v23

    .line 309
    .line 310
    const/16 v9, 0x23d

    .line 311
    .line 312
    const/16 v15, 0xf

    .line 313
    .line 314
    goto :goto_7

    .line 315
    :cond_b
    move/from16 v23, v13

    .line 316
    .line 317
    move/from16 v22, v14

    .line 318
    .line 319
    if-nez v17, :cond_d

    .line 320
    .line 321
    :cond_c
    move-object v15, v2

    .line 322
    goto/16 :goto_e

    .line 323
    .line 324
    :cond_d
    add-int/lit8 v5, v11, -0x1

    .line 325
    .line 326
    :goto_a
    aget-short v7, v6, v5

    .line 327
    .line 328
    if-nez v7, :cond_e

    .line 329
    .line 330
    add-int/lit8 v5, v5, -0x1

    .line 331
    .line 332
    goto :goto_a

    .line 333
    :cond_e
    add-int/lit8 v7, v7, -0x1

    .line 334
    .line 335
    int-to-short v7, v7

    .line 336
    aput-short v7, v6, v5

    .line 337
    .line 338
    add-int/lit8 v5, v5, 0x1

    .line 339
    .line 340
    aget-short v7, v6, v5

    .line 341
    .line 342
    add-int/lit8 v7, v7, 0x2

    .line 343
    .line 344
    int-to-short v7, v7

    .line 345
    aput-short v7, v6, v5

    .line 346
    .line 347
    aget-short v5, v6, v11

    .line 348
    .line 349
    add-int/lit8 v5, v5, -0x1

    .line 350
    .line 351
    int-to-short v5, v5

    .line 352
    aput-short v5, v6, v11

    .line 353
    .line 354
    add-int/lit8 v17, v17, -0x2

    .line 355
    .line 356
    if-gtz v17, :cond_d

    .line 357
    .line 358
    :goto_b
    if-eqz v11, :cond_c

    .line 359
    .line 360
    aget-short v5, v6, v11

    .line 361
    .line 362
    :goto_c
    if-eqz v5, :cond_11

    .line 363
    .line 364
    add-int/lit8 v4, v4, -0x1

    .line 365
    .line 366
    aget v7, v8, v4

    .line 367
    .line 368
    iget v9, v0, Lcom/jcraft/jzlib/Tree;->max_code:I

    .line 369
    .line 370
    if-le v7, v9, :cond_f

    .line 371
    .line 372
    goto :goto_c

    .line 373
    :cond_f
    mul-int/lit8 v7, v7, 0x2

    .line 374
    .line 375
    add-int/lit8 v9, v7, 0x1

    .line 376
    .line 377
    aget-short v10, v3, v9

    .line 378
    .line 379
    if-eq v10, v11, :cond_10

    .line 380
    .line 381
    iget v13, v1, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 382
    .line 383
    int-to-long v13, v13

    .line 384
    move-object v15, v2

    .line 385
    move-object/from16 v21, v3

    .line 386
    .line 387
    int-to-long v2, v11

    .line 388
    move-wide/from16 v17, v2

    .line 389
    .line 390
    int-to-long v2, v10

    .line 391
    sub-long v2, v17, v2

    .line 392
    .line 393
    aget-short v7, v21, v7

    .line 394
    .line 395
    move-wide/from16 v17, v2

    .line 396
    .line 397
    int-to-long v2, v7

    .line 398
    mul-long v2, v2, v17

    .line 399
    .line 400
    add-long/2addr v2, v13

    .line 401
    long-to-int v2, v2

    .line 402
    iput v2, v1, Lcom/jcraft/jzlib/Deflate;->opt_len:I

    .line 403
    .line 404
    int-to-short v2, v11

    .line 405
    aput-short v2, v21, v9

    .line 406
    .line 407
    goto :goto_d

    .line 408
    :cond_10
    move-object v15, v2

    .line 409
    move-object/from16 v21, v3

    .line 410
    .line 411
    :goto_d
    add-int/lit8 v5, v5, -0x1

    .line 412
    .line 413
    move-object v2, v15

    .line 414
    move-object/from16 v3, v21

    .line 415
    .line 416
    goto :goto_c

    .line 417
    :cond_11
    move-object v15, v2

    .line 418
    move-object/from16 v21, v3

    .line 419
    .line 420
    add-int/lit8 v11, v11, -0x1

    .line 421
    .line 422
    goto :goto_b

    .line 423
    :goto_e
    const/16 v0, 0x10

    .line 424
    .line 425
    new-array v0, v0, [S

    .line 426
    .line 427
    move/from16 v2, v16

    .line 428
    .line 429
    move/from16 v1, v23

    .line 430
    .line 431
    const/16 v3, 0xf

    .line 432
    .line 433
    :goto_f
    if-gt v1, v3, :cond_12

    .line 434
    .line 435
    add-int/lit8 v4, v1, -0x1

    .line 436
    .line 437
    aget-short v4, v6, v4

    .line 438
    .line 439
    add-int/2addr v2, v4

    .line 440
    shl-int/lit8 v2, v2, 0x1

    .line 441
    .line 442
    int-to-short v2, v2

    .line 443
    aput-short v2, v0, v1

    .line 444
    .line 445
    add-int/lit8 v1, v1, 0x1

    .line 446
    .line 447
    goto :goto_f

    .line 448
    :cond_12
    move/from16 v1, v16

    .line 449
    .line 450
    :goto_10
    if-gt v1, v12, :cond_15

    .line 451
    .line 452
    mul-int/lit8 v2, v1, 0x2

    .line 453
    .line 454
    add-int/lit8 v3, v2, 0x1

    .line 455
    .line 456
    aget-short v3, v15, v3

    .line 457
    .line 458
    if-nez v3, :cond_13

    .line 459
    .line 460
    goto :goto_11

    .line 461
    :cond_13
    aget-short v4, v0, v3

    .line 462
    .line 463
    add-int/lit8 v5, v4, 0x1

    .line 464
    .line 465
    int-to-short v5, v5

    .line 466
    aput-short v5, v0, v3

    .line 467
    .line 468
    move/from16 v5, v16

    .line 469
    .line 470
    :cond_14
    and-int/lit8 v6, v4, 0x1

    .line 471
    .line 472
    or-int/2addr v5, v6

    .line 473
    ushr-int/lit8 v4, v4, 0x1

    .line 474
    .line 475
    shl-int/lit8 v5, v5, 0x1

    .line 476
    .line 477
    add-int/lit8 v3, v3, -0x1

    .line 478
    .line 479
    if-gtz v3, :cond_14

    .line 480
    .line 481
    ushr-int/lit8 v3, v5, 0x1

    .line 482
    .line 483
    int-to-short v3, v3

    .line 484
    aput-short v3, v15, v2

    .line 485
    .line 486
    :goto_11
    add-int/lit8 v1, v1, 0x1

    .line 487
    .line 488
    goto :goto_10

    .line 489
    :cond_15
    return-void

    .line 490
    :cond_16
    move v3, v4

    .line 491
    move/from16 v5, v16

    .line 492
    .line 493
    goto/16 :goto_5
.end method
