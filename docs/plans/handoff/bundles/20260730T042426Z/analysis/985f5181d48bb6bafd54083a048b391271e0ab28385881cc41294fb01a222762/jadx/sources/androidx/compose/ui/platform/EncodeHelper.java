package androidx.compose.ui.platform;

import android.os.Parcel;
import android.util.Base64;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.text.SpanStyle;
import androidx.compose.ui.text.font.FontStyle;
import androidx.compose.ui.text.font.FontSynthesis;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.BaselineShift;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.text.style.TextGeometricTransform;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitType;

/* compiled from: AndroidClipboardManager.android.kt */
/* loaded from: classes.dex */
public final class EncodeHelper {
    private Parcel parcel = Parcel.obtain();

    public final void reset() {
        this.parcel.recycle();
        this.parcel = Parcel.obtain();
    }

    public final String encodedString() {
        return Base64.encodeToString(this.parcel.marshall(), 0);
    }

    public final void encode(SpanStyle spanStyle) {
        long m2095getColor0d7_KjU = spanStyle.m2095getColor0d7_KjU();
        Color.Companion companion = Color.Companion;
        if (!Color.m1304equalsimpl0(m2095getColor0d7_KjU, companion.m1317getUnspecified0d7_KjU())) {
            encode((byte) 1);
            m1974encode8_81llA(spanStyle.m2095getColor0d7_KjU());
        }
        long m2096getFontSizeXSAIIZE = spanStyle.m2096getFontSizeXSAIIZE();
        TextUnit.Companion companion2 = TextUnit.Companion;
        if (!TextUnit.m2495equalsimpl0(m2096getFontSizeXSAIIZE, companion2.m2502getUnspecifiedXSAIIZE())) {
            encode((byte) 2);
            m1971encodeR2X_6o(spanStyle.m2096getFontSizeXSAIIZE());
        }
        FontWeight fontWeight = spanStyle.getFontWeight();
        if (fontWeight != null) {
            encode((byte) 3);
            encode(fontWeight);
        }
        FontStyle m2097getFontStyle4Lr2A7w = spanStyle.m2097getFontStyle4Lr2A7w();
        if (m2097getFontStyle4Lr2A7w != null) {
            int m2166unboximpl = m2097getFontStyle4Lr2A7w.m2166unboximpl();
            encode((byte) 4);
            m1976encodenzbMABs(m2166unboximpl);
        }
        FontSynthesis m2098getFontSynthesisZQGJjVo = spanStyle.m2098getFontSynthesisZQGJjVo();
        if (m2098getFontSynthesisZQGJjVo != null) {
            int m2175unboximpl = m2098getFontSynthesisZQGJjVo.m2175unboximpl();
            encode((byte) 5);
            m1973encode6p3vJLY(m2175unboximpl);
        }
        String fontFeatureSettings = spanStyle.getFontFeatureSettings();
        if (fontFeatureSettings != null) {
            encode((byte) 6);
            encode(fontFeatureSettings);
        }
        if (!TextUnit.m2495equalsimpl0(spanStyle.m2099getLetterSpacingXSAIIZE(), companion2.m2502getUnspecifiedXSAIIZE())) {
            encode((byte) 7);
            m1971encodeR2X_6o(spanStyle.m2099getLetterSpacingXSAIIZE());
        }
        BaselineShift m2094getBaselineShift5SSeXJ0 = spanStyle.m2094getBaselineShift5SSeXJ0();
        if (m2094getBaselineShift5SSeXJ0 != null) {
            float m2281unboximpl = m2094getBaselineShift5SSeXJ0.m2281unboximpl();
            encode((byte) 8);
            m1972encode4Dl_Bck(m2281unboximpl);
        }
        TextGeometricTransform textGeometricTransform = spanStyle.getTextGeometricTransform();
        if (textGeometricTransform != null) {
            encode((byte) 9);
            encode(textGeometricTransform);
        }
        if (!Color.m1304equalsimpl0(spanStyle.m2093getBackground0d7_KjU(), companion.m1317getUnspecified0d7_KjU())) {
            encode((byte) 10);
            m1974encode8_81llA(spanStyle.m2093getBackground0d7_KjU());
        }
        TextDecoration textDecoration = spanStyle.getTextDecoration();
        if (textDecoration != null) {
            encode((byte) 11);
            encode(textDecoration);
        }
        Shadow shadow = spanStyle.getShadow();
        if (shadow != null) {
            encode((byte) 12);
            encode(shadow);
        }
    }

    /* renamed from: encode-8_81llA, reason: not valid java name */
    public final void m1974encode8_81llA(long j) {
        m1975encodeVKZWuLQ(j);
    }

    /* renamed from: encode--R2X_6o, reason: not valid java name */
    public final void m1971encodeR2X_6o(long j) {
        long m2497getTypeUIouoOA = TextUnit.m2497getTypeUIouoOA(j);
        TextUnitType.Companion companion = TextUnitType.Companion;
        byte b = 0;
        if (!TextUnitType.m2511equalsimpl0(m2497getTypeUIouoOA, companion.m2517getUnspecifiedUIouoOA())) {
            if (TextUnitType.m2511equalsimpl0(m2497getTypeUIouoOA, companion.m2516getSpUIouoOA())) {
                b = 1;
            } else if (TextUnitType.m2511equalsimpl0(m2497getTypeUIouoOA, companion.m2515getEmUIouoOA())) {
                b = 2;
            }
        }
        encode(b);
        if (TextUnitType.m2511equalsimpl0(TextUnit.m2497getTypeUIouoOA(j), companion.m2517getUnspecifiedUIouoOA())) {
            return;
        }
        encode(TextUnit.m2498getValueimpl(j));
    }

    public final void encode(FontWeight fontWeight) {
        encode(fontWeight.getWeight());
    }

    /* renamed from: encode-nzbMABs, reason: not valid java name */
    public final void m1976encodenzbMABs(int i) {
        FontStyle.Companion companion = FontStyle.Companion;
        byte b = 0;
        if (!FontStyle.m2163equalsimpl0(i, companion.m2168getNormal_LCdwA()) && FontStyle.m2163equalsimpl0(i, companion.m2167getItalic_LCdwA())) {
            b = 1;
        }
        encode(b);
    }

    /* renamed from: encode-6p3vJLY, reason: not valid java name */
    public final void m1973encode6p3vJLY(int i) {
        FontSynthesis.Companion companion = FontSynthesis.Companion;
        byte b = 0;
        if (!FontSynthesis.m2172equalsimpl0(i, companion.m2177getNoneGVVA2EU())) {
            if (FontSynthesis.m2172equalsimpl0(i, companion.m2176getAllGVVA2EU())) {
                b = 1;
            } else if (FontSynthesis.m2172equalsimpl0(i, companion.m2179getWeightGVVA2EU())) {
                b = 2;
            } else if (FontSynthesis.m2172equalsimpl0(i, companion.m2178getStyleGVVA2EU())) {
                b = 3;
            }
        }
        encode(b);
    }

    /* renamed from: encode-4Dl_Bck, reason: not valid java name */
    public final void m1972encode4Dl_Bck(float f) {
        encode(f);
    }

    public final void encode(TextGeometricTransform textGeometricTransform) {
        encode(textGeometricTransform.getScaleX());
        encode(textGeometricTransform.getSkewX());
    }

    public final void encode(TextDecoration textDecoration) {
        encode(textDecoration.getMask());
    }

    public final void encode(Shadow shadow) {
        m1974encode8_81llA(shadow.m1408getColor0d7_KjU());
        encode(Offset.m1167getXimpl(shadow.m1409getOffsetF1C5BW0()));
        encode(Offset.m1168getYimpl(shadow.m1409getOffsetF1C5BW0()));
        encode(shadow.getBlurRadius());
    }

    public final void encode(byte b) {
        this.parcel.writeByte(b);
    }

    public final void encode(int i) {
        this.parcel.writeInt(i);
    }

    public final void encode(float f) {
        this.parcel.writeFloat(f);
    }

    /* renamed from: encode-VKZWuLQ, reason: not valid java name */
    public final void m1975encodeVKZWuLQ(long j) {
        this.parcel.writeLong(j);
    }

    public final void encode(String str) {
        this.parcel.writeString(str);
    }
}
