.class public final Lcoil3/decode/ExifData;
.super Ljava/lang/Object;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcoil3/decode/ExifData$Companion;
    }
.end annotation


# static fields
.field public static final Companion:Lcoil3/decode/ExifData$Companion;

.field public static final NONE:Lcoil3/decode/ExifData;


# instance fields
.field private final isFlipped:Z

.field private final rotationDegrees:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lcoil3/decode/ExifData$Companion;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcoil3/decode/ExifData$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcoil3/decode/ExifData;->Companion:Lcoil3/decode/ExifData$Companion;

    .line 8
    .line 9
    new-instance v0, Lcoil3/decode/ExifData;

    .line 10
    .line 11
    const/4 v1, 0x0

    .line 12
    invoke-direct {v0, v1, v1}, Lcoil3/decode/ExifData;-><init>(ZI)V

    .line 13
    .line 14
    .line 15
    sput-object v0, Lcoil3/decode/ExifData;->NONE:Lcoil3/decode/ExifData;

    .line 16
    .line 17
    return-void
.end method

.method public constructor <init>(ZI)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-boolean p1, p0, Lcoil3/decode/ExifData;->isFlipped:Z

    .line 5
    .line 6
    iput p2, p0, Lcoil3/decode/ExifData;->rotationDegrees:I

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final getRotationDegrees()I
    .locals 0

    .line 1
    iget p0, p0, Lcoil3/decode/ExifData;->rotationDegrees:I

    .line 2
    .line 3
    return p0
.end method

.method public final isFlipped()Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcoil3/decode/ExifData;->isFlipped:Z

    .line 2
    .line 3
    return p0
.end method
