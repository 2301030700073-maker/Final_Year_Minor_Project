.class public interface abstract Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;
.super Ljava/lang/Object;
.source "r8-map-id-5c42cb83f75859ba9a04ff37bb86a22b3712bc256fe317787b2a7645129b709e"


# static fields
.field public static final Companion:Landroidx/compose/ui/graphics/layer/LayerSnapshotV21;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Landroidx/compose/ui/graphics/layer/LayerSnapshotV21;->$$INSTANCE:Landroidx/compose/ui/graphics/layer/LayerSnapshotV21;

    .line 2
    .line 3
    sput-object v0, Landroidx/compose/ui/graphics/layer/GraphicsLayerImpl;->Companion:Landroidx/compose/ui/graphics/layer/LayerSnapshotV21;

    .line 4
    .line 5
    return-void
.end method


# virtual methods
.method public abstract calculateMatrix()Landroid/graphics/Matrix;
.end method

.method public abstract discardDisplayList()V
.end method

.method public abstract draw(Landroidx/compose/ui/graphics/Canvas;)V
.end method

.method public abstract getAlpha()F
.end method

.method public abstract getAmbientShadowColor-0d7_KjU()J
.end method

.method public abstract getBlendMode-0nO6VwU()I
.end method

.method public abstract getCameraDistance()F
.end method

.method public abstract getColorFilter()Landroidx/compose/ui/graphics/BlendModeColorFilter;
.end method

.method public abstract getCompositingStrategy-ke2Ky5w()I
.end method

.method public abstract getHasDisplayList()Z
.end method

.method public abstract getRotationX()F
.end method

.method public abstract getRotationY()F
.end method

.method public abstract getRotationZ()F
.end method

.method public abstract getScaleX()F
.end method

.method public abstract getScaleY()F
.end method

.method public abstract getShadowElevation()F
.end method

.method public abstract getSpotShadowColor-0d7_KjU()J
.end method

.method public abstract getTranslationX()F
.end method

.method public abstract getTranslationY()F
.end method

.method public abstract record(Landroidx/compose/ui/unit/Density;Landroidx/compose/ui/unit/LayoutDirection;Landroidx/compose/ui/graphics/layer/GraphicsLayer;Landroidx/compose/ui/node/NodeChainKt$fillVector$1;)V
.end method

.method public abstract setAlpha(F)V
.end method

.method public abstract setAmbientShadowColor-8_81llA(J)V
.end method

.method public abstract setBlendMode-s9anfk8(I)V
.end method

.method public abstract setCameraDistance(F)V
.end method

.method public abstract setClip(Z)V
.end method

.method public abstract setColorFilter()V
.end method

.method public abstract setCompositingStrategy-Wpw9cng(I)V
.end method

.method public abstract setOutline-O0kMr_c(Landroid/graphics/Outline;J)V
.end method

.method public abstract setPivotOffset-k-4lQ0M(J)V
.end method

.method public abstract setPosition-H0pRuoY(IIJ)V
.end method

.method public abstract setRotationX()V
.end method

.method public abstract setRotationY()V
.end method

.method public abstract setRotationZ(F)V
.end method

.method public abstract setScaleX(F)V
.end method

.method public abstract setScaleY(F)V
.end method

.method public abstract setShadowElevation(F)V
.end method

.method public abstract setSpotShadowColor-8_81llA(J)V
.end method

.method public abstract setTranslationX()V
.end method

.method public abstract setTranslationY(F)V
.end method
