package androidx.compose.ui.text.font;

import androidx.compose.ui.text.font.PlatformResolveInterceptor;
import ch.qos.logback.core.CoreConstants;
import kotlin.ranges.RangesKt;

/* compiled from: AndroidFontResolveInterceptor.android.kt */
/* loaded from: classes.dex */
public final class AndroidFontResolveInterceptor implements PlatformResolveInterceptor {
    private final int fontWeightAdjustment;

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return (obj instanceof AndroidFontResolveInterceptor) && this.fontWeightAdjustment == ((AndroidFontResolveInterceptor) obj).fontWeightAdjustment;
    }

    public int hashCode() {
        return this.fontWeightAdjustment;
    }

    @Override // androidx.compose.ui.text.font.PlatformResolveInterceptor
    public /* synthetic */ FontFamily interceptFontFamily(FontFamily fontFamily) {
        return PlatformResolveInterceptor.CC.$default$interceptFontFamily(this, fontFamily);
    }

    @Override // androidx.compose.ui.text.font.PlatformResolveInterceptor
    /* renamed from: interceptFontStyle-T2F_aPo, reason: not valid java name */
    public /* synthetic */ int mo2154interceptFontStyleT2F_aPo(int i) {
        return PlatformResolveInterceptor.CC.m2180$default$interceptFontStyleT2F_aPo(this, i);
    }

    @Override // androidx.compose.ui.text.font.PlatformResolveInterceptor
    /* renamed from: interceptFontSynthesis-Mscr08Y, reason: not valid java name */
    public /* synthetic */ int mo2155interceptFontSynthesisMscr08Y(int i) {
        return PlatformResolveInterceptor.CC.m2181$default$interceptFontSynthesisMscr08Y(this, i);
    }

    public String toString() {
        return "AndroidFontResolveInterceptor(fontWeightAdjustment=" + this.fontWeightAdjustment + CoreConstants.RIGHT_PARENTHESIS_CHAR;
    }

    public AndroidFontResolveInterceptor(int i) {
        this.fontWeightAdjustment = i;
    }

    @Override // androidx.compose.ui.text.font.PlatformResolveInterceptor
    public FontWeight interceptFontWeight(FontWeight fontWeight) {
        int i = this.fontWeightAdjustment;
        return (i == 0 || i == Integer.MAX_VALUE) ? fontWeight : new FontWeight(RangesKt.coerceIn(fontWeight.getWeight() + this.fontWeightAdjustment, 1, 1000));
    }
}
