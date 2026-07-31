.class public final Lexpo/modules/video/records/DRMOptions;
.super Ljava/lang/Object;
.source "DRMOptions.kt"

# interfaces
.implements Lexpo/modules/kotlin/records/Record;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nDRMOptions.kt\nKotlin\n*S Kotlin\n*F\n+ 1 DRMOptions.kt\nexpo/modules/video/records/DRMOptions\n+ 2 fake.kt\nkotlin/jvm/internal/FakeKt\n*L\n1#1,26:1\n1#2:27\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0018\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u00012\u00020\u0002B?\u0012\u0008\u0008\u0002\u0010\u0003\u001a\u00020\u0004\u0012\n\u0008\u0002\u0010\u0005\u001a\u0004\u0018\u00010\u0006\u0012\u0016\u0008\u0002\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u0008\u0012\u0008\u0008\u0002\u0010\t\u001a\u00020\n\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u0006\u0010\"\u001a\u00020#R$\u0010\u0003\u001a\u00020\u00048\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R&\u0010\u0005\u001a\u0004\u0018\u00010\u00068\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0013\u0010\u000e\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R2\u0010\u0007\u001a\u0010\u0012\u0004\u0012\u00020\u0006\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00088\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u0018\u0010\u000e\u001a\u0004\u0008\u0019\u0010\u001a\"\u0004\u0008\u001b\u0010\u001cR$\u0010\t\u001a\u00020\n8\u0006@\u0006X\u0087\u000e\u00a2\u0006\u0014\n\u0000\u0012\u0004\u0008\u001d\u0010\u000e\u001a\u0004\u0008\u001e\u0010\u001f\"\u0004\u0008 \u0010!\u00a8\u0006$"
    }
    d2 = {
        "Lexpo/modules/video/records/DRMOptions;",
        "Lexpo/modules/kotlin/records/Record;",
        "Ljava/io/Serializable;",
        "type",
        "Lexpo/modules/video/enums/DRMType;",
        "licenseServer",
        "",
        "headers",
        "",
        "multiKey",
        "",
        "<init>",
        "(Lexpo/modules/video/enums/DRMType;Ljava/lang/String;Ljava/util/Map;Z)V",
        "getType$annotations",
        "()V",
        "getType",
        "()Lexpo/modules/video/enums/DRMType;",
        "setType",
        "(Lexpo/modules/video/enums/DRMType;)V",
        "getLicenseServer$annotations",
        "getLicenseServer",
        "()Ljava/lang/String;",
        "setLicenseServer",
        "(Ljava/lang/String;)V",
        "getHeaders$annotations",
        "getHeaders",
        "()Ljava/util/Map;",
        "setHeaders",
        "(Ljava/util/Map;)V",
        "getMultiKey$annotations",
        "getMultiKey",
        "()Z",
        "setMultiKey",
        "(Z)V",
        "toDRMConfiguration",
        "Landroidx/media3/common/MediaItem$DrmConfiguration;",
        "expo-video_release"
    }
    k = 0x1
    mv = {
        0x2,
        0x0,
        0x0
    }
    xi = 0x30
.end annotation


# instance fields
.field private headers:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private licenseServer:Ljava/lang/String;

.field private multiKey:Z

.field private type:Lexpo/modules/video/enums/DRMType;


# direct methods
.method public constructor <init>()V
    .locals 7

    const/16 v5, 0xf

    const/4 v6, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v6}, Lexpo/modules/video/records/DRMOptions;-><init>(Lexpo/modules/video/enums/DRMType;Ljava/lang/String;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Lexpo/modules/video/enums/DRMType;Ljava/lang/String;Ljava/util/Map;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lexpo/modules/video/enums/DRMType;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;Z)V"
        }
    .end annotation

    const-string v0, "type"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 10
    iput-object p1, p0, Lexpo/modules/video/records/DRMOptions;->type:Lexpo/modules/video/enums/DRMType;

    .line 11
    iput-object p2, p0, Lexpo/modules/video/records/DRMOptions;->licenseServer:Ljava/lang/String;

    .line 12
    iput-object p3, p0, Lexpo/modules/video/records/DRMOptions;->headers:Ljava/util/Map;

    .line 13
    iput-boolean p4, p0, Lexpo/modules/video/records/DRMOptions;->multiKey:Z

    return-void
.end method

.method public synthetic constructor <init>(Lexpo/modules/video/enums/DRMType;Ljava/lang/String;Ljava/util/Map;ZILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 1

    and-int/lit8 p6, p5, 0x1

    if-eqz p6, :cond_0

    .line 10
    sget-object p1, Lexpo/modules/video/enums/DRMType;->WIDEVINE:Lexpo/modules/video/enums/DRMType;

    :cond_0
    and-int/lit8 p6, p5, 0x2

    const/4 v0, 0x0

    if-eqz p6, :cond_1

    move-object p2, v0

    :cond_1
    and-int/lit8 p6, p5, 0x4

    if-eqz p6, :cond_2

    move-object p3, v0

    :cond_2
    and-int/lit8 p5, p5, 0x8

    if-eqz p5, :cond_3

    const/4 p4, 0x0

    .line 9
    :cond_3
    invoke-direct {p0, p1, p2, p3, p4}, Lexpo/modules/video/records/DRMOptions;-><init>(Lexpo/modules/video/enums/DRMType;Ljava/lang/String;Ljava/util/Map;Z)V

    return-void
.end method

.method public static synthetic getHeaders$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getLicenseServer$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getMultiKey$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method

.method public static synthetic getType$annotations()V
    .locals 0
    .annotation runtime Lexpo/modules/kotlin/records/Field;
    .end annotation

    return-void
.end method


# virtual methods
.method public final getHeaders()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 12
    iget-object v0, p0, Lexpo/modules/video/records/DRMOptions;->headers:Ljava/util/Map;

    return-object v0
.end method

.method public final getLicenseServer()Ljava/lang/String;
    .locals 1

    .line 11
    iget-object v0, p0, Lexpo/modules/video/records/DRMOptions;->licenseServer:Ljava/lang/String;

    return-object v0
.end method

.method public final getMultiKey()Z
    .locals 1

    .line 13
    iget-boolean v0, p0, Lexpo/modules/video/records/DRMOptions;->multiKey:Z

    return v0
.end method

.method public final getType()Lexpo/modules/video/enums/DRMType;
    .locals 1

    .line 10
    iget-object v0, p0, Lexpo/modules/video/records/DRMOptions;->type:Lexpo/modules/video/enums/DRMType;

    return-object v0
.end method

.method public final setHeaders(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 12
    iput-object p1, p0, Lexpo/modules/video/records/DRMOptions;->headers:Ljava/util/Map;

    return-void
.end method

.method public final setLicenseServer(Ljava/lang/String;)V
    .locals 0

    .line 11
    iput-object p1, p0, Lexpo/modules/video/records/DRMOptions;->licenseServer:Ljava/lang/String;

    return-void
.end method

.method public final setMultiKey(Z)V
    .locals 0

    .line 13
    iput-boolean p1, p0, Lexpo/modules/video/records/DRMOptions;->multiKey:Z

    return-void
.end method

.method public final setType(Lexpo/modules/video/enums/DRMType;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, p0, Lexpo/modules/video/records/DRMOptions;->type:Lexpo/modules/video/enums/DRMType;

    return-void
.end method

.method public final toDRMConfiguration()Landroidx/media3/common/MediaItem$DrmConfiguration;
    .locals 2

    .line 18
    new-instance v0, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    iget-object v1, p0, Lexpo/modules/video/records/DRMOptions;->type:Lexpo/modules/video/enums/DRMType;

    invoke-virtual {v1}, Lexpo/modules/video/enums/DRMType;->toUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;-><init>(Ljava/util/UUID;)V

    .line 20
    iget-object v1, p0, Lexpo/modules/video/records/DRMOptions;->licenseServer:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->setLicenseUri(Ljava/lang/String;)Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    .line 21
    :cond_0
    iget-object v1, p0, Lexpo/modules/video/records/DRMOptions;->headers:Ljava/util/Map;

    if-eqz v1, :cond_1

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->setLicenseRequestHeaders(Ljava/util/Map;)Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    .line 22
    :cond_1
    iget-boolean v1, p0, Lexpo/modules/video/records/DRMOptions;->multiKey:Z

    invoke-virtual {v0, v1}, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->setMultiSession(Z)Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;

    .line 24
    invoke-virtual {v0}, Landroidx/media3/common/MediaItem$DrmConfiguration$Builder;->build()Landroidx/media3/common/MediaItem$DrmConfiguration;

    move-result-object v0

    const-string v1, "build(...)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
