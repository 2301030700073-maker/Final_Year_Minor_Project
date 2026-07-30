package androidx.compose.material3.tokens;

import androidx.compose.material3.internal.DefaultPlatformTextStyle_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.style.LineHeightStyle;
import org.bouncycastle.asn1.cmp.PKIFailureInfo;

/* compiled from: TypographyTokens.kt */
/* loaded from: classes.dex */
public abstract class TypographyTokensKt {
    private static final LineHeightStyle DefaultLineHeightStyle;
    private static final TextStyle DefaultTextStyle;

    static {
        TextStyle m2135copyp1EtxEg;
        LineHeightStyle lineHeightStyle = new LineHeightStyle(LineHeightStyle.Alignment.Companion.m2331getCenterPIaL0Z0(), LineHeightStyle.Trim.Companion.m2340getNoneEVpEnUU(), null);
        DefaultLineHeightStyle = lineHeightStyle;
        m2135copyp1EtxEg = r0.m2135copyp1EtxEg((r48 & 1) != 0 ? r0.spanStyle.m2095getColor0d7_KjU() : 0L, (r48 & 2) != 0 ? r0.spanStyle.m2096getFontSizeXSAIIZE() : 0L, (r48 & 4) != 0 ? r0.spanStyle.getFontWeight() : null, (r48 & 8) != 0 ? r0.spanStyle.m2097getFontStyle4Lr2A7w() : null, (r48 & 16) != 0 ? r0.spanStyle.m2098getFontSynthesisZQGJjVo() : null, (r48 & 32) != 0 ? r0.spanStyle.getFontFamily() : null, (r48 & 64) != 0 ? r0.spanStyle.getFontFeatureSettings() : null, (r48 & 128) != 0 ? r0.spanStyle.m2099getLetterSpacingXSAIIZE() : 0L, (r48 & 256) != 0 ? r0.spanStyle.m2094getBaselineShift5SSeXJ0() : null, (r48 & 512) != 0 ? r0.spanStyle.getTextGeometricTransform() : null, (r48 & 1024) != 0 ? r0.spanStyle.getLocaleList() : null, (r48 & 2048) != 0 ? r0.spanStyle.m2093getBackground0d7_KjU() : 0L, (r48 & PKIFailureInfo.certConfirmed) != 0 ? r0.spanStyle.getTextDecoration() : null, (r48 & 8192) != 0 ? r0.spanStyle.getShadow() : null, (r48 & 16384) != 0 ? r0.spanStyle.getDrawStyle() : null, (r48 & 32768) != 0 ? r0.paragraphStyle.m2077getTextAligne0LSkKk() : 0, (r48 & PKIFailureInfo.notAuthorized) != 0 ? r0.paragraphStyle.m2078getTextDirections_7Xco() : 0, (r48 & PKIFailureInfo.unsupportedVersion) != 0 ? r0.paragraphStyle.m2076getLineHeightXSAIIZE() : 0L, (r48 & PKIFailureInfo.transactionIdInUse) != 0 ? r0.paragraphStyle.getTextIndent() : null, (r48 & PKIFailureInfo.signerNotTrusted) != 0 ? r0.platformStyle : DefaultPlatformTextStyle_androidKt.defaultPlatformTextStyle(), (r48 & PKIFailureInfo.badCertTemplate) != 0 ? r0.paragraphStyle.getLineHeightStyle() : lineHeightStyle, (r48 & PKIFailureInfo.badSenderNonce) != 0 ? r0.paragraphStyle.m2075getLineBreakrAG3T2k() : 0, (r48 & 4194304) != 0 ? r0.paragraphStyle.m2074getHyphensvmbZdU8() : 0, (r48 & 8388608) != 0 ? TextStyle.Companion.getDefault().paragraphStyle.getTextMotion() : null);
        DefaultTextStyle = m2135copyp1EtxEg;
    }

    public static final TextStyle getDefaultTextStyle() {
        return DefaultTextStyle;
    }
}
