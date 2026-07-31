.class public final Lexpo/modules/image/blurhash/BlurhashDecoder;
.super Ljava/lang/Object;
.source "BlurhashDecoder.kt"


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nBlurhashDecoder.kt\nKotlin\n*S Kotlin\n*F\n+ 1 BlurhashDecoder.kt\nexpo/modules/image/blurhash/BlurhashDecoder\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,190:1\n1567#2:191\n1598#2,4:192\n*S KotlinDebug\n*F\n+ 1 BlurhashDecoder.kt\nexpo/modules/image/blurhash/BlurhashDecoder\n*L\n187#1:191\n187#1:192,4\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000d\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0010\u0013\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0005\n\u0002\u0010\u0014\n\u0002\u0008\n\n\u0002\u0010\u0011\n\u0002\u0008\u0005\n\u0002\u0010\u0006\n\u0002\u0008\u0006\n\u0002\u0010$\n\u0002\u0010\u000c\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003J\u0006\u0010\n\u001a\u00020\u000bJ6\u0010\u000c\u001a\u0004\u0018\u00010\r2\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u000f2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0012\u001a\u00020\u00132\u0008\u0008\u0002\u0010\u0014\u001a\u00020\u0015J$\u0010\u0016\u001a\u00020\u00062\u0006\u0010\u0017\u001a\u00020\u000f2\u0008\u0008\u0002\u0010\u0018\u001a\u00020\u00062\u0008\u0008\u0002\u0010\u0019\u001a\u00020\u0006H\u0002J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0006H\u0002J\u0010\u0010\u001d\u001a\u00020\u00132\u0006\u0010\u001c\u001a\u00020\u0006H\u0002J\u0018\u0010\u001e\u001a\u00020\u001b2\u0006\u0010\u001f\u001a\u00020\u00062\u0006\u0010 \u001a\u00020\u0013H\u0002J\u0010\u0010!\u001a\u00020\u00132\u0006\u0010\u001f\u001a\u00020\u0013H\u0002JC\u0010\"\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u00062\u000c\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\u001b0&2\u0006\u0010\u0014\u001a\u00020\u0015H\u0002\u00a2\u0006\u0002\u0010\'J \u0010(\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\u00152\u0006\u0010\u0011\u001a\u00020\u00062\u0006\u0010$\u001a\u00020\u0006H\u0002J \u0010*\u001a\u00020\u00072\u0006\u0010)\u001a\u00020\u00152\u0006\u0010\u0010\u001a\u00020\u00062\u0006\u0010#\u001a\u00020\u0006H\u0002J4\u0010+\u001a\u00020,*\u00020\u00072\u0006\u0010)\u001a\u00020\u00152\u0006\u0010-\u001a\u00020\u00062\u0006\u0010.\u001a\u00020\u00062\u0006\u0010/\u001a\u00020\u00062\u0006\u00100\u001a\u00020\u0006H\u0002J\u0010\u00101\u001a\u00020\u00062\u0006\u0010\u001f\u001a\u00020\u0013H\u0002R*\u0010\u0004\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007`\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R*\u0010\t\u001a\u001e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u00070\u0005j\u000e\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0007`\u0008X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001a\u00102\u001a\u000e\u0012\u0004\u0012\u000204\u0012\u0004\u0012\u00020\u000603X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u00065"
    }
    d2 = {
        "Lexpo/modules/image/blurhash/BlurhashDecoder;",
        "",
        "<init>",
        "()V",
        "cacheCosinesX",
        "Ljava/util/HashMap;",
        "",
        "",
        "Lkotlin/collections/HashMap;",
        "cacheCosinesY",
        "clearCache",
        "",
        "decode",
        "Landroid/graphics/Bitmap;",
        "blurHash",
        "",
        "width",
        "height",
        "punch",
        "",
        "useCache",
        "",
        "decode83",
        "str",
        "from",
        "to",
        "decodeDc",
        "",
        "colorEnc",
        "srgbToLinear",
        "decodeAc",
        "value",
        "maxAc",
        "signedPow2",
        "composeBitmap",
        "numCompX",
        "numCompY",
        "colors",
        "",
        "(IIII[[FZ)Landroid/graphics/Bitmap;",
        "getArrayForCosinesY",
        "calculate",
        "getArrayForCosinesX",
        "getCos",
        "",
        "x",
        "numComp",
        "y",
        "size",
        "linearToSrgb",
        "charMap",
        "",
        "",
        "expo-image_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# static fields
.field public static final INSTANCE:Lexpo/modules/image/blurhash/BlurhashDecoder;

.field private static final cacheCosinesX:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[D>;"
        }
    .end annotation
.end field

.field private static final cacheCosinesY:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/Integer;",
            "[D>;"
        }
    .end annotation
.end field

.field private static final charMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Character;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 24

    new-instance v0, Lexpo/modules/image/blurhash/BlurhashDecoder;

    invoke-direct {v0}, Lexpo/modules/image/blurhash/BlurhashDecoder;-><init>()V

    sput-object v0, Lexpo/modules/image/blurhash/BlurhashDecoder;->INSTANCE:Lexpo/modules/image/blurhash/BlurhashDecoder;

    .line 17
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lexpo/modules/image/blurhash/BlurhashDecoder;->cacheCosinesX:Ljava/util/HashMap;

    .line 18
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lexpo/modules/image/blurhash/BlurhashDecoder;->cacheCosinesY:Ljava/util/HashMap;

    const/16 v0, 0x53

    .line 181
    new-array v1, v0, [Ljava/lang/Character;

    const/16 v2, 0x30

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    const/16 v3, 0x31

    invoke-static {v3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v5

    const/4 v6, 0x1

    aput-object v5, v1, v6

    const/16 v5, 0x32

    invoke-static {v5}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v6

    const/4 v7, 0x2

    aput-object v6, v1, v7

    const/16 v6, 0x33

    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v7

    const/4 v8, 0x3

    aput-object v7, v1, v8

    const/16 v7, 0x34

    invoke-static {v7}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    const/4 v9, 0x4

    aput-object v8, v1, v9

    const/16 v8, 0x35

    invoke-static {v8}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v1, v10

    const/16 v9, 0x36

    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v10

    const/4 v11, 0x6

    aput-object v10, v1, v11

    const/16 v10, 0x37

    invoke-static {v10}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    const/4 v12, 0x7

    aput-object v11, v1, v12

    const/16 v11, 0x38

    invoke-static {v11}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v12

    const/16 v13, 0x8

    aput-object v12, v1, v13

    const/16 v12, 0x39

    invoke-static {v12}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v13

    const/16 v14, 0x9

    aput-object v13, v1, v14

    const/16 v13, 0x41

    invoke-static {v13}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v14

    const/16 v15, 0xa

    aput-object v14, v1, v15

    const/16 v14, 0x42

    invoke-static {v14}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v16

    const/16 v17, 0xb

    aput-object v16, v1, v17

    const/16 v16, 0x43

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v17

    const/16 v18, 0xc

    aput-object v17, v1, v18

    const/16 v17, 0x44

    invoke-static/range {v17 .. v17}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v18

    const/16 v19, 0xd

    aput-object v18, v1, v19

    const/16 v18, 0x45

    invoke-static/range {v18 .. v18}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v19

    const/16 v20, 0xe

    aput-object v19, v1, v20

    const/16 v19, 0x46

    invoke-static/range {v19 .. v19}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v20

    const/16 v21, 0xf

    aput-object v20, v1, v21

    const/16 v20, 0x47

    invoke-static/range {v20 .. v20}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v21

    const/16 v22, 0x10

    aput-object v21, v1, v22

    const/16 v21, 0x48

    .line 182
    invoke-static/range {v21 .. v21}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v22

    const/16 v23, 0x11

    aput-object v22, v1, v23

    const/16 v22, 0x49

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v22

    const/16 v23, 0x12

    aput-object v22, v1, v23

    const/16 v22, 0x4a

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v22

    const/16 v23, 0x13

    aput-object v22, v1, v23

    const/16 v22, 0x4b

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v22

    const/16 v23, 0x14

    aput-object v22, v1, v23

    const/16 v22, 0x4c

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v22

    const/16 v23, 0x15

    aput-object v22, v1, v23

    const/16 v22, 0x4d

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v22

    const/16 v23, 0x16

    aput-object v22, v1, v23

    const/16 v22, 0x4e

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v22

    const/16 v23, 0x17

    aput-object v22, v1, v23

    const/16 v22, 0x4f

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v22

    const/16 v23, 0x18

    aput-object v22, v1, v23

    const/16 v22, 0x50

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v22

    const/16 v23, 0x19

    aput-object v22, v1, v23

    const/16 v22, 0x51

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v22

    const/16 v23, 0x1a

    aput-object v22, v1, v23

    const/16 v22, 0x52

    invoke-static/range {v22 .. v22}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v22

    const/16 v23, 0x1b

    aput-object v22, v1, v23

    const/16 v22, 0x1c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v1, v22

    const/16 v0, 0x54

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v22, 0x1d

    aput-object v0, v1, v22

    const/16 v0, 0x55

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v22, 0x1e

    aput-object v0, v1, v22

    const/16 v0, 0x56

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v22, 0x1f

    aput-object v0, v1, v22

    const/16 v0, 0x57

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v22, 0x20

    aput-object v0, v1, v22

    const/16 v0, 0x58

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v22, 0x21

    aput-object v0, v1, v22

    const/16 v0, 0x59

    .line 183
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v22, 0x22

    aput-object v0, v1, v22

    const/16 v0, 0x5a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v22, 0x23

    aput-object v0, v1, v22

    const/16 v0, 0x61

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v22, 0x24

    aput-object v0, v1, v22

    const/16 v0, 0x62

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v22, 0x25

    aput-object v0, v1, v22

    const/16 v0, 0x63

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v22, 0x26

    aput-object v0, v1, v22

    const/16 v0, 0x64

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v22, 0x27

    aput-object v0, v1, v22

    const/16 v0, 0x65

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v22, 0x28

    aput-object v0, v1, v22

    const/16 v0, 0x66

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v22, 0x29

    aput-object v0, v1, v22

    const/16 v0, 0x67

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v22, 0x2a

    aput-object v0, v1, v22

    const/16 v0, 0x68

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v22, 0x2b

    aput-object v0, v1, v22

    const/16 v0, 0x69

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v22, 0x2c

    aput-object v0, v1, v22

    const/16 v0, 0x6a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v22, 0x2d

    aput-object v0, v1, v22

    const/16 v0, 0x6b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v22, 0x2e

    aput-object v0, v1, v22

    const/16 v0, 0x6c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v22, 0x2f

    aput-object v0, v1, v22

    const/16 v0, 0x6d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v1, v2

    const/16 v0, 0x6e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v1, v3

    const/16 v0, 0x6f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v1, v5

    const/16 v0, 0x70

    .line 184
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v1, v6

    const/16 v0, 0x71

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v1, v7

    const/16 v0, 0x72

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v1, v8

    const/16 v0, 0x73

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v1, v9

    const/16 v0, 0x74

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v1, v10

    const/16 v0, 0x75

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v1, v11

    const/16 v0, 0x76

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v1, v12

    const/16 v0, 0x77

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x3a

    aput-object v0, v1, v2

    const/16 v0, 0x78

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x3b

    aput-object v0, v1, v2

    const/16 v0, 0x79

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x3c

    aput-object v0, v1, v2

    const/16 v0, 0x7a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x3d

    aput-object v0, v1, v2

    const/16 v0, 0x23

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x3e

    aput-object v0, v1, v2

    const/16 v0, 0x24

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x3f

    aput-object v0, v1, v2

    const/16 v0, 0x25

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x40

    aput-object v0, v1, v2

    const/16 v0, 0x2a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v1, v13

    const/16 v0, 0x2b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v1, v14

    const/16 v0, 0x2c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v1, v16

    const/16 v0, 0x2d

    .line 185
    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v1, v17

    const/16 v0, 0x2e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v1, v18

    const/16 v0, 0x3a

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v1, v19

    const/16 v0, 0x3b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v1, v20

    const/16 v0, 0x3d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    aput-object v0, v1, v21

    const/16 v0, 0x3f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x49

    aput-object v0, v1, v2

    const/16 v0, 0x40

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x4a

    aput-object v0, v1, v2

    const/16 v0, 0x5b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x4b

    aput-object v0, v1, v2

    const/16 v0, 0x5d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x4c

    aput-object v0, v1, v2

    const/16 v0, 0x5e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x4d

    aput-object v0, v1, v2

    const/16 v0, 0x5f

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x4e

    aput-object v0, v1, v2

    const/16 v0, 0x7b

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x4f

    aput-object v0, v1, v2

    const/16 v0, 0x7c

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x50

    aput-object v0, v1, v2

    const/16 v0, 0x7d

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x51

    aput-object v0, v1, v2

    const/16 v0, 0x7e

    invoke-static {v0}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v0

    const/16 v2, 0x52

    aput-object v0, v1, v2

    .line 180
    invoke-static {v1}, Lkotlin/collections/CollectionsKt;->listOf([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    check-cast v0, Ljava/lang/Iterable;

    .line 191
    new-instance v1, Ljava/util/ArrayList;

    invoke-static {v0, v15}, Lkotlin/collections/CollectionsKt;->collectionSizeOrDefault(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    check-cast v1, Ljava/util/Collection;

    .line 193
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v4, 0x1

    if-gez v4, :cond_0

    .line 194
    invoke-static {}, Lkotlin/collections/CollectionsKt;->throwIndexOverflow()V

    :cond_0
    check-cast v2, Ljava/lang/Character;

    invoke-virtual {v2}, Ljava/lang/Character;->charValue()C

    move-result v2

    .line 187
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v2, v4}, Lkotlin/TuplesKt;->to(Ljava/lang/Object;Ljava/lang/Object;)Lkotlin/Pair;

    move-result-object v2

    .line 194
    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v4, v3

    goto :goto_0

    .line 195
    :cond_1
    check-cast v1, Ljava/util/List;

    .line 191
    check-cast v1, Ljava/lang/Iterable;

    .line 188
    invoke-static {v1}, Lkotlin/collections/MapsKt;->toMap(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lexpo/modules/image/blurhash/BlurhashDecoder;->charMap:Ljava/util/Map;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final composeBitmap(IIII[[FZ)Landroid/graphics/Bitmap;
    .locals 28

    move-object/from16 v7, p0

    move/from16 v8, p1

    move/from16 v9, p2

    move/from16 v10, p3

    move/from16 v11, p4

    mul-int v0, v8, v9

    .line 111
    new-array v12, v0, [I

    const/4 v13, 0x0

    const/4 v14, 0x1

    if-eqz p6, :cond_1

    .line 112
    sget-object v0, Lexpo/modules/image/blurhash/BlurhashDecoder;->cacheCosinesX:Ljava/util/HashMap;

    mul-int v1, v8, v10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v15, v13

    goto :goto_1

    :cond_1
    :goto_0
    move v15, v14

    .line 113
    :goto_1
    invoke-direct {v7, v15, v8, v10}, Lexpo/modules/image/blurhash/BlurhashDecoder;->getArrayForCosinesX(ZII)[D

    move-result-object v16

    if-eqz p6, :cond_3

    .line 114
    sget-object v0, Lexpo/modules/image/blurhash/BlurhashDecoder;->cacheCosinesY:Ljava/util/HashMap;

    mul-int v1, v9, v11

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move v6, v13

    goto :goto_3

    :cond_3
    :goto_2
    move v6, v14

    .line 115
    :goto_3
    invoke-direct {v7, v6, v9, v11}, Lexpo/modules/image/blurhash/BlurhashDecoder;->getArrayForCosinesY(ZII)[D

    move-result-object v17

    move v5, v13

    :goto_4
    if-ge v5, v9, :cond_7

    move v4, v13

    :goto_5
    if-ge v4, v8, :cond_6

    const/4 v0, 0x0

    move v1, v0

    move v2, v1

    move v3, v13

    :goto_6
    if-ge v3, v11, :cond_5

    move/from16 v18, v0

    move/from16 v19, v1

    move/from16 v20, v2

    move v2, v13

    :goto_7
    if-ge v2, v10, :cond_4

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move/from16 v21, v2

    move v2, v15

    move/from16 v22, v3

    move/from16 v3, v21

    move/from16 v23, v4

    move/from16 v4, p3

    move/from16 v24, v5

    move/from16 v5, v23

    move/from16 v25, v6

    move/from16 v6, p1

    .line 123
    invoke-direct/range {v0 .. v6}, Lexpo/modules/image/blurhash/BlurhashDecoder;->getCos([DZIIII)D

    move-result-wide v26

    move-object/from16 v1, v17

    move/from16 v2, v25

    move/from16 v3, v22

    move/from16 v4, p4

    move/from16 v5, v24

    move/from16 v6, p2

    .line 124
    invoke-direct/range {v0 .. v6}, Lexpo/modules/image/blurhash/BlurhashDecoder;->getCos([DZIIII)D

    move-result-wide v0

    mul-double v0, v0, v26

    double-to-float v0, v0

    mul-int v3, v22, v10

    add-int v3, v3, v21

    .line 126
    aget-object v1, p5, v3

    .line 127
    aget v2, v1, v13

    mul-float/2addr v2, v0

    add-float v18, v18, v2

    .line 128
    aget v2, v1, v14

    mul-float/2addr v2, v0

    add-float v19, v19, v2

    const/4 v2, 0x2

    .line 129
    aget v1, v1, v2

    mul-float/2addr v1, v0

    add-float v20, v20, v1

    add-int/lit8 v2, v21, 0x1

    move/from16 v3, v22

    move/from16 v4, v23

    move/from16 v6, v25

    goto :goto_7

    :cond_4
    move/from16 v22, v3

    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v3, v22, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    move/from16 v2, v20

    goto :goto_6

    :cond_5
    move/from16 v23, v4

    move/from16 v24, v5

    move/from16 v25, v6

    mul-int v3, v8, v24

    add-int v4, v23, v3

    .line 132
    invoke-direct {v7, v0}, Lexpo/modules/image/blurhash/BlurhashDecoder;->linearToSrgb(F)I

    move-result v0

    invoke-direct {v7, v1}, Lexpo/modules/image/blurhash/BlurhashDecoder;->linearToSrgb(F)I

    move-result v1

    invoke-direct {v7, v2}, Lexpo/modules/image/blurhash/BlurhashDecoder;->linearToSrgb(F)I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Color;->rgb(III)I

    move-result v0

    aput v0, v12, v4

    add-int/lit8 v4, v23, 0x1

    goto/16 :goto_5

    :cond_6
    move/from16 v24, v5

    move/from16 v25, v6

    add-int/lit8 v5, v24, 0x1

    goto/16 :goto_4

    .line 135
    :cond_7
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v12, v8, v9, v0}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    const-string v1, "createBitmap(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static synthetic decode$default(Lexpo/modules/image/blurhash/BlurhashDecoder;Ljava/lang/String;IIFZILjava/lang/Object;)Landroid/graphics/Bitmap;
    .locals 6

    and-int/lit8 p7, p6, 0x8

    if-eqz p7, :cond_0

    const/high16 p4, 0x3f800000    # 1.0f

    :cond_0
    move v4, p4

    and-int/lit8 p4, p6, 0x10

    if-eqz p4, :cond_1

    const/4 p5, 0x1

    :cond_1
    move v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    .line 37
    invoke-virtual/range {v0 .. v5}, Lexpo/modules/image/blurhash/BlurhashDecoder;->decode(Ljava/lang/String;IIFZ)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method private final decode83(Ljava/lang/String;II)I
    .locals 3

    const/4 v0, 0x0

    :goto_0
    if-ge p2, p3, :cond_2

    .line 65
    sget-object v1, Lexpo/modules/image/blurhash/BlurhashDecoder;->charMap:Ljava/util/Map;

    invoke-virtual {p1, p2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    const/4 v2, -0x1

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_1

    :cond_0
    move v1, v2

    :goto_1
    if-eq v1, v2, :cond_1

    mul-int/lit8 v0, v0, 0x53

    add-int/2addr v0, v1

    :cond_1
    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    :cond_2
    return v0
.end method

.method static synthetic decode83$default(Lexpo/modules/image/blurhash/BlurhashDecoder;Ljava/lang/String;IIILjava/lang/Object;)I
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    .line 62
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p3

    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lexpo/modules/image/blurhash/BlurhashDecoder;->decode83(Ljava/lang/String;II)I

    move-result p0

    return p0
.end method

.method private final decodeAc(IF)[F
    .locals 3

    .line 90
    div-int/lit16 v0, p1, 0x169

    .line 91
    div-int/lit8 v1, p1, 0x13

    rem-int/lit8 v1, v1, 0x13

    .line 92
    rem-int/lit8 p1, p1, 0x13

    add-int/lit8 v0, v0, -0x9

    int-to-float v0, v0

    const/high16 v2, 0x41100000    # 9.0f

    div-float/2addr v0, v2

    .line 94
    invoke-direct {p0, v0}, Lexpo/modules/image/blurhash/BlurhashDecoder;->signedPow2(F)F

    move-result v0

    mul-float/2addr v0, p2

    add-int/lit8 v1, v1, -0x9

    int-to-float v1, v1

    div-float/2addr v1, v2

    .line 95
    invoke-direct {p0, v1}, Lexpo/modules/image/blurhash/BlurhashDecoder;->signedPow2(F)F

    move-result v1

    mul-float/2addr v1, p2

    add-int/lit8 p1, p1, -0x9

    int-to-float p1, p1

    div-float/2addr p1, v2

    .line 96
    invoke-direct {p0, p1}, Lexpo/modules/image/blurhash/BlurhashDecoder;->signedPow2(F)F

    move-result p1

    mul-float/2addr p1, p2

    const/4 p2, 0x3

    new-array p2, p2, [F

    const/4 v2, 0x0

    aput v0, p2, v2

    const/4 v0, 0x1

    aput v1, p2, v0

    const/4 v0, 0x2

    aput p1, p2, v0

    return-object p2
.end method

.method private final decodeDc(I)[F
    .locals 4

    shr-int/lit8 v0, p1, 0x10

    shr-int/lit8 v1, p1, 0x8

    and-int/lit16 v1, v1, 0xff

    and-int/lit16 p1, p1, 0xff

    .line 77
    invoke-direct {p0, v0}, Lexpo/modules/image/blurhash/BlurhashDecoder;->srgbToLinear(I)F

    move-result v0

    invoke-direct {p0, v1}, Lexpo/modules/image/blurhash/BlurhashDecoder;->srgbToLinear(I)F

    move-result v1

    invoke-direct {p0, p1}, Lexpo/modules/image/blurhash/BlurhashDecoder;->srgbToLinear(I)F

    move-result p1

    const/4 v2, 0x3

    new-array v2, v2, [F

    const/4 v3, 0x0

    aput v0, v2, v3

    const/4 v0, 0x1

    aput v1, v2, v0

    const/4 v0, 0x2

    aput p1, v2, v0

    return-object v2
.end method

.method private final getArrayForCosinesX(ZII)[D
    .locals 0

    if-eqz p1, :cond_0

    mul-int/2addr p2, p3

    .line 151
    new-array p1, p2, [D

    .line 152
    sget-object p3, Lexpo/modules/image/blurhash/BlurhashDecoder;->cacheCosinesX:Ljava/util/HashMap;

    check-cast p3, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 155
    :cond_0
    sget-object p1, Lexpo/modules/image/blurhash/BlurhashDecoder;->cacheCosinesX:Ljava/util/HashMap;

    mul-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, [D

    :goto_0
    return-object p1
.end method

.method private final getArrayForCosinesY(ZII)[D
    .locals 0

    if-eqz p1, :cond_0

    mul-int/2addr p2, p3

    .line 140
    new-array p1, p2, [D

    .line 141
    sget-object p3, Lexpo/modules/image/blurhash/BlurhashDecoder;->cacheCosinesY:Ljava/util/HashMap;

    check-cast p3, Ljava/util/Map;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-interface {p3, p2, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 145
    :cond_0
    sget-object p1, Lexpo/modules/image/blurhash/BlurhashDecoder;->cacheCosinesY:Ljava/util/HashMap;

    mul-int/2addr p2, p3

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNull(Ljava/lang/Object;)V

    check-cast p1, [D

    :goto_0
    return-object p1
.end method

.method private final getCos([DZIIII)D
    .locals 4

    if-eqz p2, :cond_0

    mul-int p2, p4, p5

    add-int/2addr p2, p3

    const-wide v0, 0x400921fb54442d18L    # Math.PI

    int-to-double v2, p5

    mul-double/2addr v2, v0

    int-to-double v0, p3

    mul-double/2addr v2, v0

    int-to-double v0, p6

    div-double/2addr v2, v0

    .line 166
    invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    aput-wide v0, p1, p2

    :cond_0
    mul-int/2addr p4, p5

    add-int/2addr p3, p4

    .line 168
    aget-wide p2, p1, p3

    return-wide p2
.end method

.method private final linearToSrgb(F)I
    .locals 6

    const/4 v0, 0x0

    const/high16 v1, 0x3f800000    # 1.0f

    .line 172
    invoke-static {p1, v0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p1

    const v0, 0x3b4d2e1c    # 0.0031308f

    cmpg-float v0, p1, v0

    const/high16 v1, 0x3f000000    # 0.5f

    if-gtz v0, :cond_0

    const v0, 0x414eb852    # 12.92f

    mul-float/2addr p1, v0

    const/high16 v0, 0x437f0000    # 255.0f

    goto :goto_0

    :cond_0
    float-to-double v2, p1

    const p1, 0x3ed55555

    float-to-double v4, p1

    .line 176
    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v2

    double-to-float p1, v2

    const v0, 0x3f870a3d    # 1.055f

    mul-float/2addr p1, v0

    const v0, 0x3d6147ae    # 0.055f

    sub-float/2addr p1, v0

    const/16 v0, 0xff

    int-to-float v0, v0

    :goto_0
    mul-float/2addr p1, v0

    add-float/2addr p1, v1

    float-to-int p1, p1

    return p1
.end method

.method private final signedPow2(F)F
    .locals 4

    float-to-double v0, p1

    const/high16 v2, 0x40000000    # 2.0f

    float-to-double v2, v2

    .line 100
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float v0, v0

    invoke-static {v0, p1}, Ljava/lang/Math;->copySign(FF)F

    move-result p1

    return p1
.end method

.method private final srgbToLinear(I)F
    .locals 4

    int-to-float p1, p1

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    const v0, 0x3d25aee6    # 0.04045f

    cmpg-float v0, p1, v0

    if-gtz v0, :cond_0

    const v0, 0x414eb852    # 12.92f

    div-float/2addr p1, v0

    goto :goto_0

    :cond_0
    const v0, 0x3d6147ae    # 0.055f

    add-float/2addr p1, v0

    const v0, 0x3f870a3d    # 1.055f

    div-float/2addr p1, v0

    float-to-double v0, p1

    const p1, 0x4019999a    # 2.4f

    float-to-double v2, p1

    .line 85
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    double-to-float p1, v0

    :goto_0
    return p1
.end method


# virtual methods
.method public final clearCache()V
    .locals 1

    .line 26
    sget-object v0, Lexpo/modules/image/blurhash/BlurhashDecoder;->cacheCosinesX:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    .line 27
    sget-object v0, Lexpo/modules/image/blurhash/BlurhashDecoder;->cacheCosinesY:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    return-void
.end method

.method public final decode(Ljava/lang/String;IIFZ)Landroid/graphics/Bitmap;
    .locals 13

    move-object v7, p0

    move-object v0, p1

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 38
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x6

    if-ge v2, v3, :cond_0

    goto :goto_2

    :cond_0
    const/4 v2, 0x0

    const/4 v4, 0x1

    .line 41
    invoke-direct {p0, p1, v2, v4}, Lexpo/modules/image/blurhash/BlurhashDecoder;->decode83(Ljava/lang/String;II)I

    move-result v5

    .line 42
    rem-int/lit8 v6, v5, 0x9

    add-int/2addr v6, v4

    .line 43
    div-int/lit8 v5, v5, 0x9

    add-int/2addr v5, v4

    .line 44
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v8

    mul-int/lit8 v9, v6, 0x2

    mul-int/2addr v9, v5

    add-int/lit8 v9, v9, 0x4

    if-eq v8, v9, :cond_1

    return-object v1

    :cond_1
    const/4 v1, 0x2

    .line 47
    invoke-direct {p0, p1, v4, v1}, Lexpo/modules/image/blurhash/BlurhashDecoder;->decode83(Ljava/lang/String;II)I

    move-result v8

    add-int/2addr v8, v4

    int-to-float v4, v8

    const/high16 v8, 0x43260000    # 166.0f

    div-float/2addr v4, v8

    mul-int v8, v6, v5

    .line 49
    new-array v9, v8, [[F

    :goto_0
    if-ge v2, v8, :cond_3

    if-nez v2, :cond_2

    .line 51
    sget-object v10, Lexpo/modules/image/blurhash/BlurhashDecoder;->INSTANCE:Lexpo/modules/image/blurhash/BlurhashDecoder;

    invoke-direct {v10, p1, v1, v3}, Lexpo/modules/image/blurhash/BlurhashDecoder;->decode83(Ljava/lang/String;II)I

    move-result v11

    .line 52
    invoke-direct {v10, v11}, Lexpo/modules/image/blurhash/BlurhashDecoder;->decodeDc(I)[F

    move-result-object v10

    goto :goto_1

    :cond_2
    mul-int/lit8 v10, v2, 0x2

    add-int/lit8 v11, v10, 0x4

    .line 55
    sget-object v12, Lexpo/modules/image/blurhash/BlurhashDecoder;->INSTANCE:Lexpo/modules/image/blurhash/BlurhashDecoder;

    add-int/2addr v10, v3

    invoke-direct {v12, p1, v11, v10}, Lexpo/modules/image/blurhash/BlurhashDecoder;->decode83(Ljava/lang/String;II)I

    move-result v10

    mul-float v11, v4, p4

    .line 56
    invoke-direct {v12, v10, v11}, Lexpo/modules/image/blurhash/BlurhashDecoder;->decodeAc(IF)[F

    move-result-object v10

    :goto_1
    aput-object v10, v9, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_3
    move-object v0, p0

    move v1, p2

    move/from16 v2, p3

    move v3, v6

    move v4, v5

    move-object v5, v9

    move/from16 v6, p5

    .line 59
    invoke-direct/range {v0 .. v6}, Lexpo/modules/image/blurhash/BlurhashDecoder;->composeBitmap(IIII[[FZ)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0

    :cond_4
    :goto_2
    return-object v1
.end method
