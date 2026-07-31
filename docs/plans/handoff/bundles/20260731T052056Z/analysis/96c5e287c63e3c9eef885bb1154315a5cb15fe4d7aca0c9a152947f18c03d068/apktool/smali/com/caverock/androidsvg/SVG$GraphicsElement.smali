.class public abstract Lcom/caverock/androidsvg/SVG$GraphicsElement;
.super Lcom/caverock/androidsvg/SVG$SvgElement;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/caverock/androidsvg/SVG$HasTransform;
.implements Lcom/caverock/androidsvg/SVG$SvgConditional;


# instance fields
.field public requiredExtensions:Ljava/lang/String;

.field public requiredFeatures:Ljava/util/HashSet;

.field public requiredFonts:Ljava/util/HashSet;

.field public requiredFormats:Ljava/util/HashSet;

.field public systemLanguage:Ljava/util/HashSet;

.field public transform:Landroid/graphics/Matrix;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/caverock/androidsvg/SVG$SvgElement;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredFeatures:Ljava/util/HashSet;

    .line 6
    .line 7
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredExtensions:Ljava/lang/String;

    .line 8
    .line 9
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->systemLanguage:Ljava/util/HashSet;

    .line 10
    .line 11
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredFormats:Ljava/util/HashSet;

    .line 12
    .line 13
    iput-object v0, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredFonts:Ljava/util/HashSet;

    .line 14
    .line 15
    return-void
.end method


# virtual methods
.method public final getRequiredExtensions()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredExtensions:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRequiredFeatures()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredFeatures:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRequiredFonts()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredFonts:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getRequiredFormats()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredFormats:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public final getSystemLanguage()Ljava/util/Set;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->systemLanguage:Ljava/util/HashSet;

    .line 2
    .line 3
    return-object p0
.end method

.method public final setRequiredExtensions(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredExtensions:Ljava/lang/String;

    .line 2
    .line 3
    return-void
.end method

.method public final setRequiredFeatures(Ljava/util/HashSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredFeatures:Ljava/util/HashSet;

    .line 2
    .line 3
    return-void
.end method

.method public final setRequiredFonts(Ljava/util/HashSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredFonts:Ljava/util/HashSet;

    .line 2
    .line 3
    return-void
.end method

.method public final setRequiredFormats(Ljava/util/HashSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->requiredFormats:Ljava/util/HashSet;

    .line 2
    .line 3
    return-void
.end method

.method public final setSystemLanguage(Ljava/util/HashSet;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->systemLanguage:Ljava/util/HashSet;

    .line 2
    .line 3
    return-void
.end method

.method public final setTransform(Landroid/graphics/Matrix;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/caverock/androidsvg/SVG$GraphicsElement;->transform:Landroid/graphics/Matrix;

    .line 2
    .line 3
    return-void
.end method
