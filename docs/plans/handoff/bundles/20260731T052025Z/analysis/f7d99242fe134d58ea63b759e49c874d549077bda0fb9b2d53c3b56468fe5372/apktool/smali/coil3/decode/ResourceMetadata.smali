.class public final Lcoil3/decode/ResourceMetadata;
.super Lcoil3/decode/ImageSource$Metadata;
.source "r8-map-id-0bf79158388e53a51ca0182ea2539bd0412421e50b81f5daf687f0d2f9d1b594"


# instance fields
.field private final density:I

.field private final packageName:Ljava/lang/String;

.field private final resId:I


# direct methods
.method public constructor <init>(Ljava/lang/String;II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcoil3/decode/ImageSource$Metadata;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcoil3/decode/ResourceMetadata;->packageName:Ljava/lang/String;

    .line 5
    .line 6
    iput p2, p0, Lcoil3/decode/ResourceMetadata;->resId:I

    .line 7
    .line 8
    iput p3, p0, Lcoil3/decode/ResourceMetadata;->density:I

    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final getDensity()I
    .locals 0

    .line 1
    iget p0, p0, Lcoil3/decode/ResourceMetadata;->density:I

    .line 2
    .line 3
    return p0
.end method

.method public final getPackageName()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcoil3/decode/ResourceMetadata;->packageName:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getResId()I
    .locals 0

    .line 1
    iget p0, p0, Lcoil3/decode/ResourceMetadata;->resId:I

    .line 2
    .line 3
    return p0
.end method
