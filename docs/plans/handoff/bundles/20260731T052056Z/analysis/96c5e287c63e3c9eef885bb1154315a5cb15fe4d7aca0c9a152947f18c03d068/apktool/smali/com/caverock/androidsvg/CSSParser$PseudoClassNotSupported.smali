.class public final Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"

# interfaces
.implements Lcom/caverock/androidsvg/CSSParser$PseudoClass;


# instance fields
.field public final clazz:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;->clazz:Ljava/lang/String;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final matches(Lcom/caverock/androidsvg/SVG$SvgElementBase;)Z
    .locals 0

    .line 1
    const/4 p0, 0x0

    .line 2
    return p0
.end method

.method public final toString()Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/caverock/androidsvg/CSSParser$PseudoClassNotSupported;->clazz:Ljava/lang/String;

    .line 2
    .line 3
    return-object p0
.end method
