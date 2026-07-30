package androidx.compose.ui.draw;

import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.FontScaling;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* compiled from: DrawModifier.kt */
/* loaded from: classes.dex */
public final class CacheDrawScope implements Density {
    private BuildDrawCacheParams cacheParams = EmptyBuildDrawCacheParams.INSTANCE;
    private ContentDrawScope contentDrawScope;
    private DrawResult drawResult;
    private Function0 graphicsContextProvider;

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: roundToPx-0680j_4 */
    public /* synthetic */ int mo207roundToPx0680j_4(float f) {
        return Density.CC.m2414$default$roundToPx0680j_4(this, f);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* renamed from: toDp-GaN1DYA */
    public /* synthetic */ float mo208toDpGaN1DYA(long j) {
        return FontScaling.CC.m2457$default$toDpGaN1DYA(this, j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public /* synthetic */ float mo209toDpu2uoSUM(float f) {
        float m2424constructorimpl;
        m2424constructorimpl = Dp.m2424constructorimpl(f / getDensity());
        return m2424constructorimpl;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDp-u2uoSUM */
    public /* synthetic */ float mo210toDpu2uoSUM(int i) {
        float m2424constructorimpl;
        m2424constructorimpl = Dp.m2424constructorimpl(i / getDensity());
        return m2424constructorimpl;
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toDpSize-k-rfVVM */
    public /* synthetic */ long mo211toDpSizekrfVVM(long j) {
        return Density.CC.m2417$default$toDpSizekrfVVM(this, j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx--R2X_6o */
    public /* synthetic */ float mo212toPxR2X_6o(long j) {
        return Density.CC.m2418$default$toPxR2X_6o(this, j);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toPx-0680j_4 */
    public /* synthetic */ float mo213toPx0680j_4(float f) {
        return Density.CC.m2419$default$toPx0680j_4(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSize-XkaWNTQ */
    public /* synthetic */ long mo214toSizeXkaWNTQ(long j) {
        return Density.CC.m2420$default$toSizeXkaWNTQ(this, j);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    /* renamed from: toSp-0xMU5do */
    public /* synthetic */ long mo215toSp0xMU5do(float f) {
        return FontScaling.CC.m2458$default$toSp0xMU5do(this, f);
    }

    @Override // androidx.compose.ui.unit.Density
    /* renamed from: toSp-kPz2Gy4 */
    public /* synthetic */ long mo216toSpkPz2Gy4(float f) {
        long mo215toSp0xMU5do;
        mo215toSp0xMU5do = mo215toSp0xMU5do(mo209toDpu2uoSUM(f));
        return mo215toSp0xMU5do;
    }

    public final void setCacheParams$ui_release(BuildDrawCacheParams buildDrawCacheParams) {
        this.cacheParams = buildDrawCacheParams;
    }

    public final DrawResult getDrawResult$ui_release() {
        return this.drawResult;
    }

    public final void setDrawResult$ui_release(DrawResult drawResult) {
        this.drawResult = drawResult;
    }

    public final void setContentDrawScope$ui_release(ContentDrawScope contentDrawScope) {
        this.contentDrawScope = contentDrawScope;
    }

    public final void setGraphicsContextProvider$ui_release(Function0 function0) {
        this.graphicsContextProvider = function0;
    }

    /* renamed from: getSize-NH-jbRc, reason: not valid java name */
    public final long m1085getSizeNHjbRc() {
        return this.cacheParams.mo1083getSizeNHjbRc();
    }

    public final LayoutDirection getLayoutDirection() {
        return this.cacheParams.getLayoutDirection();
    }

    public final DrawResult onDrawBehind(final Function1 function1) {
        return onDrawWithContent(new Function1() { // from class: androidx.compose.ui.draw.CacheDrawScope$onDrawBehind$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ Object invoke(Object obj) {
                invoke((ContentDrawScope) obj);
                return Unit.INSTANCE;
            }

            public final void invoke(ContentDrawScope contentDrawScope) {
                Function1.this.invoke(contentDrawScope);
                contentDrawScope.drawContent();
            }
        });
    }

    public final DrawResult onDrawWithContent(Function1 function1) {
        DrawResult drawResult = new DrawResult(function1);
        this.drawResult = drawResult;
        return drawResult;
    }

    @Override // androidx.compose.ui.unit.Density
    public float getDensity() {
        return this.cacheParams.getDensity().getDensity();
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public float getFontScale() {
        return this.cacheParams.getDensity().getFontScale();
    }
}
